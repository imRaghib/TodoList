// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState()';
}


}

/// @nodoc
class $UserProfileStateCopyWith<$Res>  {
$UserProfileStateCopyWith(UserProfileState _, $Res Function(UserProfileState) __);
}


/// Adds pattern-matching-related methods to [UserProfileState].
extension UserProfileStatePatterns on UserProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserProfileStateInitial value)?  initial,TResult Function( UserProfileStateLoading value)?  loading,TResult Function( UserProfileStateError value)?  error,TResult Function( UserProfileStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserProfileStateInitial() when initial != null:
return initial(_that);case UserProfileStateLoading() when loading != null:
return loading(_that);case UserProfileStateError() when error != null:
return error(_that);case UserProfileStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserProfileStateInitial value)  initial,required TResult Function( UserProfileStateLoading value)  loading,required TResult Function( UserProfileStateError value)  error,required TResult Function( UserProfileStateData value)  data,}){
final _that = this;
switch (_that) {
case UserProfileStateInitial():
return initial(_that);case UserProfileStateLoading():
return loading(_that);case UserProfileStateError():
return error(_that);case UserProfileStateData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserProfileStateInitial value)?  initial,TResult? Function( UserProfileStateLoading value)?  loading,TResult? Function( UserProfileStateError value)?  error,TResult? Function( UserProfileStateData value)?  data,}){
final _that = this;
switch (_that) {
case UserProfileStateInitial() when initial != null:
return initial(_that);case UserProfileStateLoading() when loading != null:
return loading(_that);case UserProfileStateError() when error != null:
return error(_that);case UserProfileStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InitialState initialState)?  initial,TResult Function( LoadingState loading)?  loading,TResult Function( ErrorState error)?  error,TResult Function( UserProfileData? data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserProfileStateInitial() when initial != null:
return initial(_that.initialState);case UserProfileStateLoading() when loading != null:
return loading(_that.loading);case UserProfileStateError() when error != null:
return error(_that.error);case UserProfileStateData() when data != null:
return data(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InitialState initialState)  initial,required TResult Function( LoadingState loading)  loading,required TResult Function( ErrorState error)  error,required TResult Function( UserProfileData? data)  data,}) {final _that = this;
switch (_that) {
case UserProfileStateInitial():
return initial(_that.initialState);case UserProfileStateLoading():
return loading(_that.loading);case UserProfileStateError():
return error(_that.error);case UserProfileStateData():
return data(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InitialState initialState)?  initial,TResult? Function( LoadingState loading)?  loading,TResult? Function( ErrorState error)?  error,TResult? Function( UserProfileData? data)?  data,}) {final _that = this;
switch (_that) {
case UserProfileStateInitial() when initial != null:
return initial(_that.initialState);case UserProfileStateLoading() when loading != null:
return loading(_that.loading);case UserProfileStateError() when error != null:
return error(_that.error);case UserProfileStateData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UserProfileStateInitial implements UserProfileState {
  const UserProfileStateInitial({required this.initialState});
  

 final  InitialState initialState;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateInitialCopyWith<UserProfileStateInitial> get copyWith => _$UserProfileStateInitialCopyWithImpl<UserProfileStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileStateInitial&&(identical(other.initialState, initialState) || other.initialState == initialState));
}


@override
int get hashCode => Object.hash(runtimeType,initialState);

@override
String toString() {
  return 'UserProfileState.initial(initialState: $initialState)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateInitialCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateInitialCopyWith(UserProfileStateInitial value, $Res Function(UserProfileStateInitial) _then) = _$UserProfileStateInitialCopyWithImpl;
@useResult
$Res call({
 InitialState initialState
});


$InitialStateCopyWith<$Res> get initialState;

}
/// @nodoc
class _$UserProfileStateInitialCopyWithImpl<$Res>
    implements $UserProfileStateInitialCopyWith<$Res> {
  _$UserProfileStateInitialCopyWithImpl(this._self, this._then);

  final UserProfileStateInitial _self;
  final $Res Function(UserProfileStateInitial) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialState = null,}) {
  return _then(UserProfileStateInitial(
initialState: null == initialState ? _self.initialState : initialState // ignore: cast_nullable_to_non_nullable
as InitialState,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InitialStateCopyWith<$Res> get initialState {
  
  return $InitialStateCopyWith<$Res>(_self.initialState, (value) {
    return _then(_self.copyWith(initialState: value));
  });
}
}

/// @nodoc


class UserProfileStateLoading implements UserProfileState {
  const UserProfileStateLoading({required this.loading});
  

 final  LoadingState loading;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateLoadingCopyWith<UserProfileStateLoading> get copyWith => _$UserProfileStateLoadingCopyWithImpl<UserProfileStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileStateLoading&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'UserProfileState.loading(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateLoadingCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateLoadingCopyWith(UserProfileStateLoading value, $Res Function(UserProfileStateLoading) _then) = _$UserProfileStateLoadingCopyWithImpl;
@useResult
$Res call({
 LoadingState loading
});


$LoadingStateCopyWith<$Res> get loading;

}
/// @nodoc
class _$UserProfileStateLoadingCopyWithImpl<$Res>
    implements $UserProfileStateLoadingCopyWith<$Res> {
  _$UserProfileStateLoadingCopyWithImpl(this._self, this._then);

  final UserProfileStateLoading _self;
  final $Res Function(UserProfileStateLoading) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(UserProfileStateLoading(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as LoadingState,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadingStateCopyWith<$Res> get loading {
  
  return $LoadingStateCopyWith<$Res>(_self.loading, (value) {
    return _then(_self.copyWith(loading: value));
  });
}
}

/// @nodoc


class UserProfileStateError implements UserProfileState {
  const UserProfileStateError({required this.error});
  

 final  ErrorState error;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateErrorCopyWith<UserProfileStateError> get copyWith => _$UserProfileStateErrorCopyWithImpl<UserProfileStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserProfileState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateErrorCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateErrorCopyWith(UserProfileStateError value, $Res Function(UserProfileStateError) _then) = _$UserProfileStateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorState error
});


$ErrorStateCopyWith<$Res> get error;

}
/// @nodoc
class _$UserProfileStateErrorCopyWithImpl<$Res>
    implements $UserProfileStateErrorCopyWith<$Res> {
  _$UserProfileStateErrorCopyWithImpl(this._self, this._then);

  final UserProfileStateError _self;
  final $Res Function(UserProfileStateError) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UserProfileStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorState,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<$Res> get error {
  
  return $ErrorStateCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class UserProfileStateData implements UserProfileState {
  const UserProfileStateData({required this.data});
  

 final  UserProfileData? data;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateDataCopyWith<UserProfileStateData> get copyWith => _$UserProfileStateDataCopyWithImpl<UserProfileStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileStateData&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserProfileState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateDataCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateDataCopyWith(UserProfileStateData value, $Res Function(UserProfileStateData) _then) = _$UserProfileStateDataCopyWithImpl;
@useResult
$Res call({
 UserProfileData? data
});


$UserProfileDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserProfileStateDataCopyWithImpl<$Res>
    implements $UserProfileStateDataCopyWith<$Res> {
  _$UserProfileStateDataCopyWithImpl(this._self, this._then);

  final UserProfileStateData _self;
  final $Res Function(UserProfileStateData) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(UserProfileStateData(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserProfileData?,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserProfileDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
