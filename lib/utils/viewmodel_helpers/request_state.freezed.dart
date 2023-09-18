// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(Object? errorText, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T? data)? data,
    TResult? Function(Object? errorText, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<T, $Res> {
  factory $RequestStateCopyWith(
          RequestState<T> value, $Res Function(RequestState<T>) then) =
      _$RequestStateCopyWithImpl<T, $Res, RequestState<T>>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<T, $Res, $Val extends RequestState<T>>
    implements $RequestStateCopyWith<T, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestIdleCopyWith<T, $Res> {
  factory _$$RequestIdleCopyWith(
          _$RequestIdle<T> value, $Res Function(_$RequestIdle<T>) then) =
      __$$RequestIdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestIdleCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestIdle<T>>
    implements _$$RequestIdleCopyWith<T, $Res> {
  __$$RequestIdleCopyWithImpl(
      _$RequestIdle<T> _value, $Res Function(_$RequestIdle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestIdle<T> implements RequestIdle<T> {
  const _$RequestIdle();

  @override
  String toString() {
    return 'RequestState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestIdle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(Object? errorText, StackTrace? stackTrace) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T? data)? data,
    TResult? Function(Object? errorText, StackTrace? stackTrace)? error,
  }) {
    return idle?.call();
  }
}

abstract class RequestIdle<T> implements RequestState<T> {
  const factory RequestIdle() = _$RequestIdle<T>;
}

/// @nodoc
abstract class _$$RequestLoadingCopyWith<T, $Res> {
  factory _$$RequestLoadingCopyWith(
          _$RequestLoading<T> value, $Res Function(_$RequestLoading<T>) then) =
      __$$RequestLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestLoadingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestLoading<T>>
    implements _$$RequestLoadingCopyWith<T, $Res> {
  __$$RequestLoadingCopyWithImpl(
      _$RequestLoading<T> _value, $Res Function(_$RequestLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLoading<T> implements RequestLoading<T> {
  const _$RequestLoading();

  @override
  String toString() {
    return 'RequestState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(Object? errorText, StackTrace? stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T? data)? data,
    TResult? Function(Object? errorText, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }
}

abstract class RequestLoading<T> implements RequestState<T> {
  const factory RequestLoading() = _$RequestLoading<T>;
}

/// @nodoc
abstract class _$$RequestDataCopyWith<T, $Res> {
  factory _$$RequestDataCopyWith(
          _$RequestData<T> value, $Res Function(_$RequestData<T>) then) =
      __$$RequestDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$RequestDataCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestData<T>>
    implements _$$RequestDataCopyWith<T, $Res> {
  __$$RequestDataCopyWithImpl(
      _$RequestData<T> _value, $Res Function(_$RequestData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RequestData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$RequestData<T> implements RequestData<T> {
  const _$RequestData(this.data);

  @override
  final T? data;

  @override
  String toString() {
    return 'RequestState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataCopyWith<T, _$RequestData<T>> get copyWith =>
      __$$RequestDataCopyWithImpl<T, _$RequestData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(Object? errorText, StackTrace? stackTrace) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T? data)? data,
    TResult? Function(Object? errorText, StackTrace? stackTrace)? error,
  }) {
    return data?.call(this.data);
  }
}

abstract class RequestData<T> implements RequestState<T> {
  const factory RequestData(final T? data) = _$RequestData<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$RequestDataCopyWith<T, _$RequestData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestErrorCopyWith<T, $Res> {
  factory _$$RequestErrorCopyWith(
          _$RequestError<T> value, $Res Function(_$RequestError<T>) then) =
      __$$RequestErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object? errorText, StackTrace? stackTrace});
}

/// @nodoc
class __$$RequestErrorCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$RequestError<T>>
    implements _$$RequestErrorCopyWith<T, $Res> {
  __$$RequestErrorCopyWithImpl(
      _$RequestError<T> _value, $Res Function(_$RequestError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$RequestError<T>(
      freezed == errorText ? _value.errorText : errorText,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$RequestError<T> implements RequestError<T> {
  const _$RequestError(this.errorText, this.stackTrace);

  @override
  final Object? errorText;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'RequestState<$T>.error(errorText: $errorText, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestError<T> &&
            const DeepCollectionEquality().equals(other.errorText, errorText) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorText), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorCopyWith<T, _$RequestError<T>> get copyWith =>
      __$$RequestErrorCopyWithImpl<T, _$RequestError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(Object? errorText, StackTrace? stackTrace) error,
  }) {
    return error(errorText, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T? data)? data,
    TResult? Function(Object? errorText, StackTrace? stackTrace)? error,
  }) {
    return error?.call(errorText, stackTrace);
  }
}

abstract class RequestError<T> implements RequestState<T> {
  const factory RequestError(
          final Object? errorText, final StackTrace? stackTrace) =
      _$RequestError<T>;

  Object? get errorText;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$RequestErrorCopyWith<T, _$RequestError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
