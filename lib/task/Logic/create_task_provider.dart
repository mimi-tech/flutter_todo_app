import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:flutter_todo_app/task/components/calender.dart';
import 'package:flutter_todo_app/task/components/time_picker_spinner_custom.dart';
import 'package:flutter_todo_app/task/model/create_task_state/create_task_state.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

final calenderPickedDate = StateProvider<DateTime>((ref) => DateTime.now());
final selectedYearProvider = StateProvider<int>((ref) {
  return DateTime.now().year;
});


final createTaskProvider = StateNotifierProvider<CreateTaskNotifier, CreateTaskState>((ref) {
  return CreateTaskNotifier();
});


class CreateTaskNotifier extends StateNotifier<CreateTaskState> {
  CreateTaskNotifier() : super(CreateTaskState());



  Future<void> showTime(BuildContext context) async {
    var theme = Theme.of(context).textTheme;
    var height  = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        context: context,
        builder: (context) => SizedBox(
          height: height * 0.35,
          child: TimePickerSpinnerCustom(
              locale: const Locale('en', ''),
              time: DateTime.now(),
              is24HourMode: false,
              isShowSeconds: false,
              itemHeight: 45,
              normalTextStyle:theme.titleLarge,
              highlightedTextStyle:theme.titleLarge!.copyWith(color: blueColor),
              isForce2Digits: true,
              day: "Sunday",
              onTimeChange: (time) {
              state = state.copyWith(startTime: DateFormat("hh:mm a").format(time).toString());
              }),
        ));
  }


  Future<void> showEndTime(BuildContext context) async {
    var theme = Theme.of(context).textTheme;
    var height  = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        context: context,
        builder: (context) => SizedBox(
          height: height * 0.35,
          child: TimePickerSpinnerCustom(
              locale: const Locale('en', ''),
              time: DateTime.now(),
              is24HourMode: false,
              isShowSeconds: false,
              itemHeight: 45,
              normalTextStyle:theme.titleLarge,
              highlightedTextStyle:theme.titleLarge!.copyWith(color: blueColor),
              isForce2Digits: true,
              day: "Sunday",
              onTimeChange: (time) {
                state = state.copyWith(endTime: DateFormat("hh:mm a").format(time).toString());
              }),
        ));
  }

  selectTaskCategory(String category){
    state = state.copyWith(category: category);
  }

  Future<void> saveTodo(TodoTask todo) async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: "");

      // Simulate loading delay
      await Future.delayed(const Duration(seconds: 3));

      // Fetch existing todos from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final String? todosString = prefs.getString('todos');
      List<TodoTask> todos = [];

      if (todosString != null) {
        final List<dynamic> decodedTodos = json.decode(todosString);
        todos = decodedTodos.map((e) => TodoTask.fromJson(e)).toList();
      }

      // Add the new todo to the beginning of the list
      todos.insert(0, todo);

      // Save the updated list back to SharedPreferences
      await prefs.setString('todos', json.encode(todos.map((e) => e.toJson()).toList()));

      // Update state
      state = state.copyWith(todos: todos, isLoading: false, success: true);

      // Reset the success state after a short delay
      await Future.delayed(const Duration(seconds: 1));
      state = state.copyWith(success: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}

