// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'avatar_url') String? get avatar_url;
/// Create a copy of UserProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileDataCopyWith<UserProfileData> get copyWith => _$UserProfileDataCopyWithImpl<UserProfileData>(this as UserProfileData, _$identity);

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar_url, avatar_url) || other.avatar_url == avatar_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,avatar_url);

@override
String toString() {
  return 'UserProfileData(id: $id, email: $email, avatar_url: $avatar_url)';
}


}

/// @nodoc
abstract mixin class $UserProfileDataCopyWith<$Res>  {
  factory $UserProfileDataCopyWith(UserProfileData value, $Res Function(UserProfileData) _then) = _$UserProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'avatar_url') String? avatar_url
});




}
/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._self, this._then);

  final UserProfileData _self;
  final $Res Function(UserProfileData) _then;

/// Create a copy of UserProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? avatar_url = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar_url: freezed == avatar_url ? _self.avatar_url : avatar_url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileData].
extension UserProfileDataPatterns on UserProfileData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileData value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'avatar_url')  String? avatar_url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileData() when $default != null:
return $default(_that.id,_that.email,_that.avatar_url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'avatar_url')  String? avatar_url)  $default,) {final _that = this;
switch (_that) {
case _UserProfileData():
return $default(_that.id,_that.email,_that.avatar_url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'avatar_url')  String? avatar_url)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileData() when $default != null:
return $default(_that.id,_that.email,_that.avatar_url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileData implements UserProfileData {
  const _UserProfileData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email, @JsonKey(name: 'avatar_url') this.avatar_url});
  factory _UserProfileData.fromJson(Map<String, dynamic> json) => _$UserProfileDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'avatar_url') final  String? avatar_url;

/// Create a copy of UserProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileDataCopyWith<_UserProfileData> get copyWith => __$UserProfileDataCopyWithImpl<_UserProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar_url, avatar_url) || other.avatar_url == avatar_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,avatar_url);

@override
String toString() {
  return 'UserProfileData(id: $id, email: $email, avatar_url: $avatar_url)';
}


}

/// @nodoc
abstract mixin class _$UserProfileDataCopyWith<$Res> implements $UserProfileDataCopyWith<$Res> {
  factory _$UserProfileDataCopyWith(_UserProfileData value, $Res Function(_UserProfileData) _then) = __$UserProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'avatar_url') String? avatar_url
});




}
/// @nodoc
class __$UserProfileDataCopyWithImpl<$Res>
    implements _$UserProfileDataCopyWith<$Res> {
  __$UserProfileDataCopyWithImpl(this._self, this._then);

  final _UserProfileData _self;
  final $Res Function(_UserProfileData) _then;

/// Create a copy of UserProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? avatar_url = freezed,}) {
  return _then(_UserProfileData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar_url: freezed == avatar_url ? _self.avatar_url : avatar_url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
