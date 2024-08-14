import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/home/model/todo_state/todo_state.dart';
import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

final todoProvider = StateNotifierProvider<TodoNotifier, TodoState>((ref) {
  return TodoNotifier();
});


class TodoNotifier extends StateNotifier<TodoState> {
  TodoNotifier() : super(TodoState()) {
    //fetchTodosForToday();
  }

  Future<void> loadTodos() async {

    try {
      state = state.copyWith(isLoading: true);
      await Future.delayed(const Duration(seconds: 1)); // Simulate a loading delay
      final prefs = await SharedPreferences.getInstance();
      final todoString = prefs.getString('todos');
      if (todoString != null) {
        final List<dynamic> todoJson = json.decode(todoString);
        final todos = todoJson.map((e) => TodoTask.fromJson(e as Map<String, dynamic>)).toList();
        double todoProgress = await calculatePercentage(todos);
        state = state.copyWith(allTodos: todos,progress: todoProgress,success: true);
      }
      state = state.copyWith(isLoading: false, success: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString(),success: false);
    }
  }



  Future<void> deleteTodo(String id) async {
    try {
      //state = state.copyWith(isLoading: true);
      final todos = state.todos.where((todo) => todo.id != id).toList();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('todos', json.encode(todos.map((e) => e.toJson()).toList()));
      double todoProgress = await calculatePercentage(todos);
      state = state.copyWith(todos: todos,allTodos: todos, isLoading: false, success: true,progress: todoProgress);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> toggleTodoChecked(String id, bool checked, bool isTodayTodo) async {
    try {

      // Fetch all todos from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final String? todosString = prefs.getString('todos');
      List<TodoTask> allTodos = [];

      if (todosString != null) {
        final List<dynamic> decodedTodos = json.decode(todosString);
        allTodos = decodedTodos.map((e) => TodoTask.fromJson(e)).toList();
      }

      final todos = allTodos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(checked: checked);
        }
        return todo;
      }).toList();


      final todayTodos = state.todos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(checked: checked);
        }
        return todo;
      }).toList();



      await prefs.setString('todos', json.encode(todos.map((e) => e.toJson()).toList()));
      double todoProgress = await calculatePercentage(isTodayTodo?todayTodos:todos);
      state = state.copyWith(todos:  todayTodos, allTodos: todos, isLoading: false, success: true,progress: todoProgress,todayTodoProgress: todoProgress);

    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> fetchTodosForToday() async {
    try {
      final today = DateTime.now();
      state = state.copyWith(isLoading: true,todos: []);

      await Future.delayed(const Duration(seconds: 1));

      // Fetch all todos from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final String? todosString = prefs.getString('todos');
      List<TodoTask> allTodos = [];

      if (todosString != null) {
        final List<dynamic> decodedTodos = json.decode(todosString);
        allTodos = decodedTodos.map((e) => TodoTask.fromJson(e)).toList();
      }

      // Filter the To-Dos for today
      final todosForToday = allTodos.where((todo) {
        final todoDate = todo.selectedDate; // Parse the date string
        return todoDate.year == today.year &&
            todoDate.month == today.month &&
            todoDate.day == today.day;
      }).toList();
     double todoProgress = await calculatePercentage(todosForToday);
      // Update the state with the filtered list
      state = state.copyWith(isLoading: false, todos: todosForToday, success: true,todayTodoProgress: todoProgress);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<double> calculatePercentage(List<TodoTask> allTodos) async{
    try{
     if(allTodos.isEmpty){
       return 0.0;
     }
    // Count the checked todos
    final checkedTodosCount = allTodos.where((todo) => todo.checked).length;

    // Calculate the progress percentage
    final progress = checkedTodosCount / allTodos.length;

    return progress;
  }catch(e){
      return 0.0;
    }
  }
}
