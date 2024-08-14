import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'todo_task.freezed.dart';
part 'todo_task.g.dart';

@freezed
class TodoTask with _$TodoTask {
  factory TodoTask({
    required String id,
    required String title,
    required String category,
    required DateTime selectedDate,
    required String startTime,
    required String endTime,
    required String description,
    required bool checked,
  }) = _TodoTask;

  factory TodoTask.fromJson(Map<String, dynamic> json) => _$TodoTaskFromJson(json);
}
