// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpRequestState()';
}


}

/// @nodoc
class $SignUpRequestStateCopyWith<$Res>  {
$SignUpRequestStateCopyWith(SignUpRequestState _, $Res Function(SignUpRequestState) __);
}


/// Adds pattern-matching-related methods to [SignUpRequestState].
extension SignUpRequestStatePatterns on SignUpRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpRequestStateInitial value)?  initial,TResult Function( SignUpRequestStateLoading value)?  loading,TResult Function( SignUpRequestStateError value)?  error,TResult Function( SignUpRequestStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpRequestStateInitial() when initial != null:
return initial(_that);case SignUpRequestStateLoading() when loading != null:
return loading(_that);case SignUpRequestStateError() when error != null:
return error(_that);case SignUpRequestStateData() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpRequestStateInitial value)  initial,required TResult Function( SignUpRequestStateLoading value)  loading,required TResult Function( SignUpRequestStateError value)  error,required TResult Function( SignUpRequestStateData value)  data,}){
final _that = this;
switch (_that) {
case SignUpRequestStateInitial():
return initial(_that);case SignUpRequestStateLoading():
return loading(_that);case SignUpRequestStateError():
return error(_that);case SignUpRequestStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpRequestStateInitial value)?  initial,TResult? Function( SignUpRequestStateLoading value)?  loading,TResult? Function( SignUpRequestStateError value)?  error,TResult? Function( SignUpRequestStateData value)?  data,}){
final _that = this;
switch (_that) {
case SignUpRequestStateInitial() when initial != null:
return initial(_that);case SignUpRequestStateLoading() when loading != null:
return loading(_that);case SignUpRequestStateError() when error != null:
return error(_that);case SignUpRequestStateData() when data != null:
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
case SignUpRequestStateInitial() when initial != null:
return initial(_that.initialState);case SignUpRequestStateLoading() when loading != null:
return loading(_that.loading);case SignUpRequestStateError() when error != null:
return error(_that.error);case SignUpRequestStateData() when data != null:
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
case SignUpRequestStateInitial():
return initial(_that.initialState);case SignUpRequestStateLoading():
return loading(_that.loading);case SignUpRequestStateError():
return error(_that.error);case SignUpRequestStateData():
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
case SignUpRequestStateInitial() when initial != null:
return initial(_that.initialState);case SignUpRequestStateLoading() when loading != null:
return loading(_that.loading);case SignUpRequestStateError() when error != null:
return error(_that.error);case SignUpRequestStateData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class SignUpRequestStateInitial implements SignUpRequestState {
  const SignUpRequestStateInitial({required this.initialState});
  

 final  InitialState initialState;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestStateInitialCopyWith<SignUpRequestStateInitial> get copyWith => _$SignUpRequestStateInitialCopyWithImpl<SignUpRequestStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestStateInitial&&(identical(other.initialState, initialState) || other.initialState == initialState));
}


@override
int get hashCode => Object.hash(runtimeType,initialState);

@override
String toString() {
  return 'SignUpRequestState.initial(initialState: $initialState)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestStateInitialCopyWith<$Res> implements $SignUpRequestStateCopyWith<$Res> {
  factory $SignUpRequestStateInitialCopyWith(SignUpRequestStateInitial value, $Res Function(SignUpRequestStateInitial) _then) = _$SignUpRequestStateInitialCopyWithImpl;
@useResult
$Res call({
 InitialState initialState
});


$InitialStateCopyWith<$Res> get initialState;

}
/// @nodoc
class _$SignUpRequestStateInitialCopyWithImpl<$Res>
    implements $SignUpRequestStateInitialCopyWith<$Res> {
  _$SignUpRequestStateInitialCopyWithImpl(this._self, this._then);

  final SignUpRequestStateInitial _self;
  final $Res Function(SignUpRequestStateInitial) _then;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialState = null,}) {
  return _then(SignUpRequestStateInitial(
initialState: null == initialState ? _self.initialState : initialState // ignore: cast_nullable_to_non_nullable
as InitialState,
  ));
}

/// Create a copy of SignUpRequestState
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


class SignUpRequestStateLoading implements SignUpRequestState {
  const SignUpRequestStateLoading({required this.loading});
  

 final  LoadingState loading;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestStateLoadingCopyWith<SignUpRequestStateLoading> get copyWith => _$SignUpRequestStateLoadingCopyWithImpl<SignUpRequestStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestStateLoading&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'SignUpRequestState.loading(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestStateLoadingCopyWith<$Res> implements $SignUpRequestStateCopyWith<$Res> {
  factory $SignUpRequestStateLoadingCopyWith(SignUpRequestStateLoading value, $Res Function(SignUpRequestStateLoading) _then) = _$SignUpRequestStateLoadingCopyWithImpl;
@useResult
$Res call({
 LoadingState loading
});


$LoadingStateCopyWith<$Res> get loading;

}
/// @nodoc
class _$SignUpRequestStateLoadingCopyWithImpl<$Res>
    implements $SignUpRequestStateLoadingCopyWith<$Res> {
  _$SignUpRequestStateLoadingCopyWithImpl(this._self, this._then);

  final SignUpRequestStateLoading _self;
  final $Res Function(SignUpRequestStateLoading) _then;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(SignUpRequestStateLoading(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as LoadingState,
  ));
}

/// Create a copy of SignUpRequestState
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


class SignUpRequestStateError implements SignUpRequestState {
  const SignUpRequestStateError({required this.error});
  

 final  ErrorState error;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestStateErrorCopyWith<SignUpRequestStateError> get copyWith => _$SignUpRequestStateErrorCopyWithImpl<SignUpRequestStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignUpRequestState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestStateErrorCopyWith<$Res> implements $SignUpRequestStateCopyWith<$Res> {
  factory $SignUpRequestStateErrorCopyWith(SignUpRequestStateError value, $Res Function(SignUpRequestStateError) _then) = _$SignUpRequestStateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorState error
});


$ErrorStateCopyWith<$Res> get error;

}
/// @nodoc
class _$SignUpRequestStateErrorCopyWithImpl<$Res>
    implements $SignUpRequestStateErrorCopyWith<$Res> {
  _$SignUpRequestStateErrorCopyWithImpl(this._self, this._then);

  final SignUpRequestStateError _self;
  final $Res Function(SignUpRequestStateError) _then;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignUpRequestStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorState,
  ));
}

/// Create a copy of SignUpRequestState
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


class SignUpRequestStateData implements SignUpRequestState {
  const SignUpRequestStateData({required this.data});
  

 final  Either<AppError, User?> data;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestStateDataCopyWith<SignUpRequestStateData> get copyWith => _$SignUpRequestStateDataCopyWithImpl<SignUpRequestStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestStateData&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SignUpRequestState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestStateDataCopyWith<$Res> implements $SignUpRequestStateCopyWith<$Res> {
  factory $SignUpRequestStateDataCopyWith(SignUpRequestStateData value, $Res Function(SignUpRequestStateData) _then) = _$SignUpRequestStateDataCopyWithImpl;
@useResult
$Res call({
 Either<AppError, User?> data
});




}
/// @nodoc
class _$SignUpRequestStateDataCopyWithImpl<$Res>
    implements $SignUpRequestStateDataCopyWith<$Res> {
  _$SignUpRequestStateDataCopyWithImpl(this._self, this._then);

  final SignUpRequestStateData _self;
  final $Res Function(SignUpRequestStateData) _then;

/// Create a copy of SignUpRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SignUpRequestStateData(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Either<AppError, User?>,
  ));
}


}

// dart format on
