// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState()';
}


}

/// @nodoc
class $LogoutStateCopyWith<$Res>  {
$LogoutStateCopyWith(LogoutState _, $Res Function(LogoutState) __);
}


/// Adds pattern-matching-related methods to [LogoutState].
extension LogoutStatePatterns on LogoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LogoutStateInitial value)?  initial,TResult Function( LogoutStateLoading value)?  loading,TResult Function( LogoutStateError value)?  error,TResult Function( LogoutStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogoutStateInitial() when initial != null:
return initial(_that);case LogoutStateLoading() when loading != null:
return loading(_that);case LogoutStateError() when error != null:
return error(_that);case LogoutStateData() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LogoutStateInitial value)  initial,required TResult Function( LogoutStateLoading value)  loading,required TResult Function( LogoutStateError value)  error,required TResult Function( LogoutStateData value)  data,}){
final _that = this;
switch (_that) {
case LogoutStateInitial():
return initial(_that);case LogoutStateLoading():
return loading(_that);case LogoutStateError():
return error(_that);case LogoutStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LogoutStateInitial value)?  initial,TResult? Function( LogoutStateLoading value)?  loading,TResult? Function( LogoutStateError value)?  error,TResult? Function( LogoutStateData value)?  data,}){
final _that = this;
switch (_that) {
case LogoutStateInitial() when initial != null:
return initial(_that);case LogoutStateLoading() when loading != null:
return loading(_that);case LogoutStateError() when error != null:
return error(_that);case LogoutStateData() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InitialState initialState)?  initial,TResult Function( LoadingState loading)?  loading,TResult Function( ErrorState error)?  error,TResult Function( bool? data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogoutStateInitial() when initial != null:
return initial(_that.initialState);case LogoutStateLoading() when loading != null:
return loading(_that.loading);case LogoutStateError() when error != null:
return error(_that.error);case LogoutStateData() when data != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InitialState initialState)  initial,required TResult Function( LoadingState loading)  loading,required TResult Function( ErrorState error)  error,required TResult Function( bool? data)  data,}) {final _that = this;
switch (_that) {
case LogoutStateInitial():
return initial(_that.initialState);case LogoutStateLoading():
return loading(_that.loading);case LogoutStateError():
return error(_that.error);case LogoutStateData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InitialState initialState)?  initial,TResult? Function( LoadingState loading)?  loading,TResult? Function( ErrorState error)?  error,TResult? Function( bool? data)?  data,}) {final _that = this;
switch (_that) {
case LogoutStateInitial() when initial != null:
return initial(_that.initialState);case LogoutStateLoading() when loading != null:
return loading(_that.loading);case LogoutStateError() when error != null:
return error(_that.error);case LogoutStateData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class LogoutStateInitial implements LogoutState {
  const LogoutStateInitial({required this.initialState});
  

 final  InitialState initialState;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutStateInitialCopyWith<LogoutStateInitial> get copyWith => _$LogoutStateInitialCopyWithImpl<LogoutStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutStateInitial&&(identical(other.initialState, initialState) || other.initialState == initialState));
}


@override
int get hashCode => Object.hash(runtimeType,initialState);

@override
String toString() {
  return 'LogoutState.initial(initialState: $initialState)';
}


}

/// @nodoc
abstract mixin class $LogoutStateInitialCopyWith<$Res> implements $LogoutStateCopyWith<$Res> {
  factory $LogoutStateInitialCopyWith(LogoutStateInitial value, $Res Function(LogoutStateInitial) _then) = _$LogoutStateInitialCopyWithImpl;
@useResult
$Res call({
 InitialState initialState
});


$InitialStateCopyWith<$Res> get initialState;

}
/// @nodoc
class _$LogoutStateInitialCopyWithImpl<$Res>
    implements $LogoutStateInitialCopyWith<$Res> {
  _$LogoutStateInitialCopyWithImpl(this._self, this._then);

  final LogoutStateInitial _self;
  final $Res Function(LogoutStateInitial) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialState = null,}) {
  return _then(LogoutStateInitial(
initialState: null == initialState ? _self.initialState : initialState // ignore: cast_nullable_to_non_nullable
as InitialState,
  ));
}

/// Create a copy of LogoutState
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


class LogoutStateLoading implements LogoutState {
  const LogoutStateLoading({required this.loading});
  

 final  LoadingState loading;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutStateLoadingCopyWith<LogoutStateLoading> get copyWith => _$LogoutStateLoadingCopyWithImpl<LogoutStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutStateLoading&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'LogoutState.loading(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $LogoutStateLoadingCopyWith<$Res> implements $LogoutStateCopyWith<$Res> {
  factory $LogoutStateLoadingCopyWith(LogoutStateLoading value, $Res Function(LogoutStateLoading) _then) = _$LogoutStateLoadingCopyWithImpl;
@useResult
$Res call({
 LoadingState loading
});


$LoadingStateCopyWith<$Res> get loading;

}
/// @nodoc
class _$LogoutStateLoadingCopyWithImpl<$Res>
    implements $LogoutStateLoadingCopyWith<$Res> {
  _$LogoutStateLoadingCopyWithImpl(this._self, this._then);

  final LogoutStateLoading _self;
  final $Res Function(LogoutStateLoading) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(LogoutStateLoading(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as LoadingState,
  ));
}

/// Create a copy of LogoutState
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


class LogoutStateError implements LogoutState {
  const LogoutStateError({required this.error});
  

 final  ErrorState error;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutStateErrorCopyWith<LogoutStateError> get copyWith => _$LogoutStateErrorCopyWithImpl<LogoutStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LogoutState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $LogoutStateErrorCopyWith<$Res> implements $LogoutStateCopyWith<$Res> {
  factory $LogoutStateErrorCopyWith(LogoutStateError value, $Res Function(LogoutStateError) _then) = _$LogoutStateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorState error
});


$ErrorStateCopyWith<$Res> get error;

}
/// @nodoc
class _$LogoutStateErrorCopyWithImpl<$Res>
    implements $LogoutStateErrorCopyWith<$Res> {
  _$LogoutStateErrorCopyWithImpl(this._self, this._then);

  final LogoutStateError _self;
  final $Res Function(LogoutStateError) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LogoutStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorState,
  ));
}

/// Create a copy of LogoutState
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


class LogoutStateData implements LogoutState {
  const LogoutStateData({required this.data});
  

 final  bool? data;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutStateDataCopyWith<LogoutStateData> get copyWith => _$LogoutStateDataCopyWithImpl<LogoutStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutStateData&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LogoutState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $LogoutStateDataCopyWith<$Res> implements $LogoutStateCopyWith<$Res> {
  factory $LogoutStateDataCopyWith(LogoutStateData value, $Res Function(LogoutStateData) _then) = _$LogoutStateDataCopyWithImpl;
@useResult
$Res call({
 bool? data
});




}
/// @nodoc
class _$LogoutStateDataCopyWithImpl<$Res>
    implements $LogoutStateDataCopyWith<$Res> {
  _$LogoutStateDataCopyWithImpl(this._self, this._then);

  final LogoutStateData _self;
  final $Res Function(LogoutStateData) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LogoutStateData(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
