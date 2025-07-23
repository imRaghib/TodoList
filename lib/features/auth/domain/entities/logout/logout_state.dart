import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/domain/entities/base_states.dart';

part 'logout_state.freezed.dart';

@freezed
sealed class LogoutState with _$LogoutState {
  /// Initial State
  const factory LogoutState.initial({required InitialState initialState}) =
      LogoutStateInitial;

  /// Loading State
  const factory LogoutState.loading({required LoadingState loading}) =
      LogoutStateLoading;

  /// Error State
  const factory LogoutState.error({required ErrorState error}) =
      LogoutStateError;

  /// Data State with ForgetPasswordData
  const factory LogoutState.data({required bool? data}) = LogoutStateData;
}
