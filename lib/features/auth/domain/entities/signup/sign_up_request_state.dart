import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/dio/results.dart';
import '../../../../common/domain/entities/base_states.dart';

part 'sign_up_request_state.freezed.dart';

@freezed
sealed class SignUpRequestState with _$SignUpRequestState {
  /// Initial State
  const factory SignUpRequestState.initial({
    required InitialState initialState,
  }) = SignUpRequestStateInitial;

  /// Loading State
  const factory SignUpRequestState.loading({required LoadingState loading}) =
      SignUpRequestStateLoading;

  /// Error State
  const factory SignUpRequestState.error({required ErrorState error}) =
      SignUpRequestStateError;

  /// Data State with SignUpRequestData
  const factory SignUpRequestState.data({
    required Either<AppError, User?> data,
  }) = SignUpRequestStateData;
}
