// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) =>
    _UserProfileData(
      id: json['id'] as String?,
      email: json['email'] as String?,
      avatar_url: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$UserProfileDataToJson(_UserProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'avatar_url': instance.avatar_url,
    };
