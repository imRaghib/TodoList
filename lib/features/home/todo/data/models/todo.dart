import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'todo') required String todo,
    @JsonKey(name: 'is_done') @Default(false) bool isDone,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

// Old model for reference

// @freezed
// abstract class Todo with _$Todo {
//   const factory Todo({
//     required String id,
//     required String title,
//     @Default(false) bool isDone,
//   }) = _Todo;
//
//   factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
// }
