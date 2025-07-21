import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_data.freezed.dart';
part 'user_profile_data.g.dart';

@Freezed()
abstract class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}
