import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';
@freezed
class TodoState with _$TodoState {
  factory TodoState({
    @Default([]) List<TodoTask> todos,
    @Default([]) List<TodoTask> allTodos,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool success,
    @Default(0.0) double progress,
    @Default(0.0) double todayTodoProgress,
  }) = _TodoState;
}