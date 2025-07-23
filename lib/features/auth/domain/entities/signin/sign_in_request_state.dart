import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/dio/results.dart';
import '../../../../common/domain/entities/base_states.dart';

part 'sign_in_request_state.freezed.dart';

@freezed
sealed class SignInRequestState with _$SignInRequestState {
  /// Initial State
  const factory SignInRequestState.initial({
    required InitialState initialState,
  }) = SignInRequestStateInitial;

  /// Loading State
  const factory SignInRequestState.loading({required LoadingState loading}) =
      SignInRequestStateLoading;

  /// Error State
  const factory SignInRequestState.error({required ErrorState error}) =
      SignInRequestStateError;

  /// Data State with SignInRequestData
  const factory SignInRequestState.data({
    required Either<AppError, User?> data,
  }) = SignInRequestStateData;
}
