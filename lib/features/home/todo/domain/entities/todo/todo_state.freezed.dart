// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoStateInitial value)?  initial,TResult Function( TodoStateLoading value)?  loading,TResult Function( TodoStateError value)?  error,TResult Function( TodoStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoStateInitial() when initial != null:
return initial(_that);case TodoStateLoading() when loading != null:
return loading(_that);case TodoStateError() when error != null:
return error(_that);case TodoStateData() when data != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoStateInitial value)  initial,required TResult Function( TodoStateLoading value)  loading,required TResult Function( TodoStateError value)  error,required TResult Function( TodoStateData value)  data,}){
final _that = this;
switch (_that) {
case TodoStateInitial():
return initial(_that);case TodoStateLoading():
return loading(_that);case TodoStateError():
return error(_that);case TodoStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoStateInitial value)?  initial,TResult? Function( TodoStateLoading value)?  loading,TResult? Function( TodoStateError value)?  error,TResult? Function( TodoStateData value)?  data,}){
final _that = this;
switch (_that) {
case TodoStateInitial() when initial != null:
return initial(_that);case TodoStateLoading() when loading != null:
return loading(_that);case TodoStateError() when error != null:
return error(_that);case TodoStateData() when data != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InitialState initialState)?  initial,TResult Function( LoadingState loading)?  loading,TResult Function( ErrorState error)?  error,TResult Function( List<Todo> data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoStateInitial() when initial != null:
return initial(_that.initialState);case TodoStateLoading() when loading != null:
return loading(_that.loading);case TodoStateError() when error != null:
return error(_that.error);case TodoStateData() when data != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InitialState initialState)  initial,required TResult Function( LoadingState loading)  loading,required TResult Function( ErrorState error)  error,required TResult Function( List<Todo> data)  data,}) {final _that = this;
switch (_that) {
case TodoStateInitial():
return initial(_that.initialState);case TodoStateLoading():
return loading(_that.loading);case TodoStateError():
return error(_that.error);case TodoStateData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InitialState initialState)?  initial,TResult? Function( LoadingState loading)?  loading,TResult? Function( ErrorState error)?  error,TResult? Function( List<Todo> data)?  data,}) {final _that = this;
switch (_that) {
case TodoStateInitial() when initial != null:
return initial(_that.initialState);case TodoStateLoading() when loading != null:
return loading(_that.loading);case TodoStateError() when error != null:
return error(_that.error);case TodoStateData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class TodoStateInitial implements TodoState {
  const TodoStateInitial({required this.initialState});
  

 final  InitialState initialState;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateInitialCopyWith<TodoStateInitial> get copyWith => _$TodoStateInitialCopyWithImpl<TodoStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoStateInitial&&(identical(other.initialState, initialState) || other.initialState == initialState));
}


@override
int get hashCode => Object.hash(runtimeType,initialState);

@override
String toString() {
  return 'TodoState.initial(initialState: $initialState)';
}


}

/// @nodoc
abstract mixin class $TodoStateInitialCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoStateInitialCopyWith(TodoStateInitial value, $Res Function(TodoStateInitial) _then) = _$TodoStateInitialCopyWithImpl;
@useResult
$Res call({
 InitialState initialState
});


$InitialStateCopyWith<$Res> get initialState;

}
/// @nodoc
class _$TodoStateInitialCopyWithImpl<$Res>
    implements $TodoStateInitialCopyWith<$Res> {
  _$TodoStateInitialCopyWithImpl(this._self, this._then);

  final TodoStateInitial _self;
  final $Res Function(TodoStateInitial) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialState = null,}) {
  return _then(TodoStateInitial(
initialState: null == initialState ? _self.initialState : initialState // ignore: cast_nullable_to_non_nullable
as InitialState,
  ));
}

/// Create a copy of TodoState
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


class TodoStateLoading implements TodoState {
  const TodoStateLoading({required this.loading});
  

 final  LoadingState loading;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateLoadingCopyWith<TodoStateLoading> get copyWith => _$TodoStateLoadingCopyWithImpl<TodoStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoStateLoading&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'TodoState.loading(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $TodoStateLoadingCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoStateLoadingCopyWith(TodoStateLoading value, $Res Function(TodoStateLoading) _then) = _$TodoStateLoadingCopyWithImpl;
@useResult
$Res call({
 LoadingState loading
});


$LoadingStateCopyWith<$Res> get loading;

}
/// @nodoc
class _$TodoStateLoadingCopyWithImpl<$Res>
    implements $TodoStateLoadingCopyWith<$Res> {
  _$TodoStateLoadingCopyWithImpl(this._self, this._then);

  final TodoStateLoading _self;
  final $Res Function(TodoStateLoading) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(TodoStateLoading(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as LoadingState,
  ));
}

/// Create a copy of TodoState
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


class TodoStateError implements TodoState {
  const TodoStateError({required this.error});
  

 final  ErrorState error;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateErrorCopyWith<TodoStateError> get copyWith => _$TodoStateErrorCopyWithImpl<TodoStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TodoState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $TodoStateErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoStateErrorCopyWith(TodoStateError value, $Res Function(TodoStateError) _then) = _$TodoStateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorState error
});


$ErrorStateCopyWith<$Res> get error;

}
/// @nodoc
class _$TodoStateErrorCopyWithImpl<$Res>
    implements $TodoStateErrorCopyWith<$Res> {
  _$TodoStateErrorCopyWithImpl(this._self, this._then);

  final TodoStateError _self;
  final $Res Function(TodoStateError) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(TodoStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorState,
  ));
}

/// Create a copy of TodoState
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


class TodoStateData implements TodoState {
  const TodoStateData({required final  List<Todo> data}): _data = data;
  

 final  List<Todo> _data;
 List<Todo> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateDataCopyWith<TodoStateData> get copyWith => _$TodoStateDataCopyWithImpl<TodoStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoStateData&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TodoState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $TodoStateDataCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoStateDataCopyWith(TodoStateData value, $Res Function(TodoStateData) _then) = _$TodoStateDataCopyWithImpl;
@useResult
$Res call({
 List<Todo> data
});




}
/// @nodoc
class _$TodoStateDataCopyWithImpl<$Res>
    implements $TodoStateDataCopyWith<$Res> {
  _$TodoStateDataCopyWithImpl(this._self, this._then);

  final TodoStateData _self;
  final $Res Function(TodoStateData) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TodoStateData(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

// dart format on
