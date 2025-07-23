// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  id: json['id'] as String?,
  userId: json['user_id'] as String,
  todo: json['todo'] as String,
  isDone: json['is_done'] as bool? ?? false,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  'user_id': instance.userId,
  'todo': instance.todo,
  'is_done': instance.isDone,
};
