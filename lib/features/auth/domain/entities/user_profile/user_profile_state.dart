import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../../data/models/auth/user_profile_data.dart';

part 'user_profile_state.freezed.dart';

@freezed
sealed class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial({required InitialState initialState}) =
      UserProfileStateInitial;

  const factory UserProfileState.loading({required LoadingState loading}) =
      UserProfileStateLoading;

  const factory UserProfileState.error({required ErrorState error}) =
      UserProfileStateError;

  const factory UserProfileState.data({required UserProfileData? data}) =
      UserProfileStateData;
}
