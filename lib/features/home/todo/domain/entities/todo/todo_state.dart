import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/domain/entities/base_states.dart';
import '../../../data/models/todo.dart';

part 'todo_state.freezed.dart';

@freezed
sealed class TodoState with _$TodoState {
  /// Initial State
  const factory TodoState.initial({required InitialState initialState}) =
      TodoStateInitial;

  /// Loading State
  const factory TodoState.loading({required LoadingState loading}) =
      TodoStateLoading;

  /// Error State
  const factory TodoState.error({required ErrorState error}) = TodoStateError;

  /// Data State with ForgetPasswordData
  const factory TodoState.data({required List<Todo> data}) = TodoStateData;
}
