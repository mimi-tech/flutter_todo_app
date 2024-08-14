// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTaskImpl _$$TodoTaskImplFromJson(Map<String, dynamic> json) =>
    _$TodoTaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      category: json['category'] as String,
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      description: json['description'] as String,
      checked: json['checked'] as bool,
    );

Map<String, dynamic> _$$TodoTaskImplToJson(_$TodoTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'description': instance.description,
      'checked': instance.checked,
    };
