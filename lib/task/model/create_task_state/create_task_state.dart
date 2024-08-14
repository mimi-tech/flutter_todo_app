import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_state.freezed.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  factory CreateTaskState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default('') String selectedDate,
    @Default('') String startTime,
    @Default('') String endTime,
    @Default('Design') String category,
    @Default([]) List<TodoTask> todos,
    @Default(false) bool success,


  }) = _CreateTaskState;
}
