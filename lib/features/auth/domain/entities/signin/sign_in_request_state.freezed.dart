// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInRequestState()';
}


}

/// @nodoc
class $SignInRequestStateCopyWith<$Res>  {
$SignInRequestStateCopyWith(SignInRequestState _, $Res Function(SignInRequestState) __);
}


/// Adds pattern-matching-related methods to [SignInRequestState].
extension SignInRequestStatePatterns on SignInRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInRequestStateInitial value)?  initial,TResult Function( SignInRequestStateLoading value)?  loading,TResult Function( SignInRequestStateError value)?  error,TResult Function( SignInRequestStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInRequestStateInitial() when initial != null:
return initial(_that);case SignInRequestStateLoading() when loading != null:
return loading(_that);case SignInRequestStateError() when error != null:
return error(_that);case SignInRequestStateData() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInRequestStateInitial value)  initial,required TResult Function( SignInRequestStateLoading value)  loading,required TResult Function( SignInRequestStateError value)  error,required TResult Function( SignInRequestStateData value)  data,}){
final _that = this;
switch (_that) {
case SignInRequestStateInitial():
return initial(_that);case SignInRequestStateLoading():
return loading(_that);case SignInRequestStateError():
return error(_that);case SignInRequestStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInRequestStateInitial value)?  initial,TResult? Function( SignInRequestStateLoading value)?  loading,TResult? Function( SignInRequestStateError value)?  error,TResult? Function( SignInRequestStateData value)?  data,}){
final _that = this;
switch (_that) {
case SignInRequestStateInitial() when initial != null:
return initial(_that);case SignInRequestStateLoading() when loading != null:
return loading(_that);case SignInRequestStateError() when error != null:
return error(_that);case SignInRequestStateData() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InitialState initialState)?  initial,TResult Function( LoadingState loading)?  loading,TResult Function( ErrorState error)?  error,TResult Function( Either<AppError, User?> data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignInRequestStateInitial() when initial != null:
return initial(_that.initialState);case SignInRequestStateLoading() when loading != null:
return loading(_that.loading);case SignInRequestStateError() when error != null:
return error(_that.error);case SignInRequestStateData() when data != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InitialState initialState)  initial,required TResult Function( LoadingState loading)  loading,required TResult Function( ErrorState error)  error,required TResult Function( Either<AppError, User?> data)  data,}) {final _that = this;
switch (_that) {
case SignInRequestStateInitial():
return initial(_that.initialState);case SignInRequestStateLoading():
return loading(_that.loading);case SignInRequestStateError():
return error(_that.error);case SignInRequestStateData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InitialState initialState)?  initial,TResult? Function( LoadingState loading)?  loading,TResult? Function( ErrorState error)?  error,TResult? Function( Either<AppError, User?> data)?  data,}) {final _that = this;
switch (_that) {
case SignInRequestStateInitial() when initial != null:
return initial(_that.initialState);case SignInRequestStateLoading() when loading != null:
return loading(_that.loading);case SignInRequestStateError() when error != null:
return error(_that.error);case SignInRequestStateData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class SignInRequestStateInitial implements SignInRequestState {
  const SignInRequestStateInitial({required this.initialState});
  

 final  InitialState initialState;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInRequestStateInitialCopyWith<SignInRequestStateInitial> get copyWith => _$SignInRequestStateInitialCopyWithImpl<SignInRequestStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequestStateInitial&&(identical(other.initialState, initialState) || other.initialState == initialState));
}


@override
int get hashCode => Object.hash(runtimeType,initialState);

@override
String toString() {
  return 'SignInRequestState.initial(initialState: $initialState)';
}


}

/// @nodoc
abstract mixin class $SignInRequestStateInitialCopyWith<$Res> implements $SignInRequestStateCopyWith<$Res> {
  factory $SignInRequestStateInitialCopyWith(SignInRequestStateInitial value, $Res Function(SignInRequestStateInitial) _then) = _$SignInRequestStateInitialCopyWithImpl;
@useResult
$Res call({
 InitialState initialState
});


$InitialStateCopyWith<$Res> get initialState;

}
/// @nodoc
class _$SignInRequestStateInitialCopyWithImpl<$Res>
    implements $SignInRequestStateInitialCopyWith<$Res> {
  _$SignInRequestStateInitialCopyWithImpl(this._self, this._then);

  final SignInRequestStateInitial _self;
  final $Res Function(SignInRequestStateInitial) _then;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialState = null,}) {
  return _then(SignInRequestStateInitial(
initialState: null == initialState ? _self.initialState : initialState // ignore: cast_nullable_to_non_nullable
as InitialState,
  ));
}

/// Create a copy of SignInRequestState
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


class SignInRequestStateLoading implements SignInRequestState {
  const SignInRequestStateLoading({required this.loading});
  

 final  LoadingState loading;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInRequestStateLoadingCopyWith<SignInRequestStateLoading> get copyWith => _$SignInRequestStateLoadingCopyWithImpl<SignInRequestStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequestStateLoading&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'SignInRequestState.loading(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $SignInRequestStateLoadingCopyWith<$Res> implements $SignInRequestStateCopyWith<$Res> {
  factory $SignInRequestStateLoadingCopyWith(SignInRequestStateLoading value, $Res Function(SignInRequestStateLoading) _then) = _$SignInRequestStateLoadingCopyWithImpl;
@useResult
$Res call({
 LoadingState loading
});


$LoadingStateCopyWith<$Res> get loading;

}
/// @nodoc
class _$SignInRequestStateLoadingCopyWithImpl<$Res>
    implements $SignInRequestStateLoadingCopyWith<$Res> {
  _$SignInRequestStateLoadingCopyWithImpl(this._self, this._then);

  final SignInRequestStateLoading _self;
  final $Res Function(SignInRequestStateLoading) _then;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(SignInRequestStateLoading(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as LoadingState,
  ));
}

/// Create a copy of SignInRequestState
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


class SignInRequestStateError implements SignInRequestState {
  const SignInRequestStateError({required this.error});
  

 final  ErrorState error;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInRequestStateErrorCopyWith<SignInRequestStateError> get copyWith => _$SignInRequestStateErrorCopyWithImpl<SignInRequestStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequestStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignInRequestState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignInRequestStateErrorCopyWith<$Res> implements $SignInRequestStateCopyWith<$Res> {
  factory $SignInRequestStateErrorCopyWith(SignInRequestStateError value, $Res Function(SignInRequestStateError) _then) = _$SignInRequestStateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorState error
});


$ErrorStateCopyWith<$Res> get error;

}
/// @nodoc
class _$SignInRequestStateErrorCopyWithImpl<$Res>
    implements $SignInRequestStateErrorCopyWith<$Res> {
  _$SignInRequestStateErrorCopyWithImpl(this._self, this._then);

  final SignInRequestStateError _self;
  final $Res Function(SignInRequestStateError) _then;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignInRequestStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorState,
  ));
}

/// Create a copy of SignInRequestState
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


class SignInRequestStateData implements SignInRequestState {
  const SignInRequestStateData({required this.data});
  

 final  Either<AppError, User?> data;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInRequestStateDataCopyWith<SignInRequestStateData> get copyWith => _$SignInRequestStateDataCopyWithImpl<SignInRequestStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequestStateData&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SignInRequestState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignInRequestStateDataCopyWith<$Res> implements $SignInRequestStateCopyWith<$Res> {
  factory $SignInRequestStateDataCopyWith(SignInRequestStateData value, $Res Function(SignInRequestStateData) _then) = _$SignInRequestStateDataCopyWithImpl;
@useResult
$Res call({
 Either<AppError, User?> data
});




}
/// @nodoc
class _$SignInRequestStateDataCopyWithImpl<$Res>
    implements $SignInRequestStateDataCopyWith<$Res> {
  _$SignInRequestStateDataCopyWithImpl(this._self, this._then);

  final SignInRequestStateData _self;
  final $Res Function(SignInRequestStateData) _then;

/// Create a copy of SignInRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SignInRequestStateData(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Either<AppError, User?>,
  ));
}


}

// dart format on
