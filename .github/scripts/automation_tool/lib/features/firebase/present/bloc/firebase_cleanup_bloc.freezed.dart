// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_cleanup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseCleanupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupEventStarted value) started,
    required TResult Function(FirebaseCleanupEventClean value) clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupEventStarted value)? started,
    TResult? Function(FirebaseCleanupEventClean value)? clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupEventStarted value)? started,
    TResult Function(FirebaseCleanupEventClean value)? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseCleanupEventCopyWith<$Res> {
  factory $FirebaseCleanupEventCopyWith(FirebaseCleanupEvent value,
          $Res Function(FirebaseCleanupEvent) then) =
      _$FirebaseCleanupEventCopyWithImpl<$Res, FirebaseCleanupEvent>;
}

/// @nodoc
class _$FirebaseCleanupEventCopyWithImpl<$Res,
        $Val extends FirebaseCleanupEvent>
    implements $FirebaseCleanupEventCopyWith<$Res> {
  _$FirebaseCleanupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseCleanupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FirebaseCleanupEventStartedImplCopyWith<$Res> {
  factory _$$FirebaseCleanupEventStartedImplCopyWith(
          _$FirebaseCleanupEventStartedImpl value,
          $Res Function(_$FirebaseCleanupEventStartedImpl) then) =
      __$$FirebaseCleanupEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseCleanupEventStartedImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupEventCopyWithImpl<$Res,
        _$FirebaseCleanupEventStartedImpl>
    implements _$$FirebaseCleanupEventStartedImplCopyWith<$Res> {
  __$$FirebaseCleanupEventStartedImplCopyWithImpl(
      _$FirebaseCleanupEventStartedImpl _value,
      $Res Function(_$FirebaseCleanupEventStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseCleanupEventStartedImpl implements FirebaseCleanupEventStarted {
  const _$FirebaseCleanupEventStartedImpl();

  @override
  String toString() {
    return 'FirebaseCleanupEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clean,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clean,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupEventStarted value) started,
    required TResult Function(FirebaseCleanupEventClean value) clean,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupEventStarted value)? started,
    TResult? Function(FirebaseCleanupEventClean value)? clean,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupEventStarted value)? started,
    TResult Function(FirebaseCleanupEventClean value)? clean,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupEventStarted implements FirebaseCleanupEvent {
  const factory FirebaseCleanupEventStarted() =
      _$FirebaseCleanupEventStartedImpl;
}

/// @nodoc
abstract class _$$FirebaseCleanupEventCleanImplCopyWith<$Res> {
  factory _$$FirebaseCleanupEventCleanImplCopyWith(
          _$FirebaseCleanupEventCleanImpl value,
          $Res Function(_$FirebaseCleanupEventCleanImpl) then) =
      __$$FirebaseCleanupEventCleanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseCleanupEventCleanImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupEventCopyWithImpl<$Res,
        _$FirebaseCleanupEventCleanImpl>
    implements _$$FirebaseCleanupEventCleanImplCopyWith<$Res> {
  __$$FirebaseCleanupEventCleanImplCopyWithImpl(
      _$FirebaseCleanupEventCleanImpl _value,
      $Res Function(_$FirebaseCleanupEventCleanImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseCleanupEventCleanImpl implements FirebaseCleanupEventClean {
  const _$FirebaseCleanupEventCleanImpl();

  @override
  String toString() {
    return 'FirebaseCleanupEvent.clean()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupEventCleanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clean,
  }) {
    return clean();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clean,
  }) {
    return clean?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupEventStarted value) started,
    required TResult Function(FirebaseCleanupEventClean value) clean,
  }) {
    return clean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupEventStarted value)? started,
    TResult? Function(FirebaseCleanupEventClean value)? clean,
  }) {
    return clean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupEventStarted value)? started,
    TResult Function(FirebaseCleanupEventClean value)? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupEventClean implements FirebaseCleanupEvent {
  const factory FirebaseCleanupEventClean() = _$FirebaseCleanupEventCleanImpl;
}

/// @nodoc
mixin _$FirebaseCleanupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseCleanupStateCopyWith<$Res> {
  factory $FirebaseCleanupStateCopyWith(FirebaseCleanupState value,
          $Res Function(FirebaseCleanupState) then) =
      _$FirebaseCleanupStateCopyWithImpl<$Res, FirebaseCleanupState>;
}

/// @nodoc
class _$FirebaseCleanupStateCopyWithImpl<$Res,
        $Val extends FirebaseCleanupState>
    implements $FirebaseCleanupStateCopyWith<$Res> {
  _$FirebaseCleanupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FirebaseCleanupStateInitialImplCopyWith<$Res> {
  factory _$$FirebaseCleanupStateInitialImplCopyWith(
          _$FirebaseCleanupStateInitialImpl value,
          $Res Function(_$FirebaseCleanupStateInitialImpl) then) =
      __$$FirebaseCleanupStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseCleanupStateInitialImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupStateCopyWithImpl<$Res,
        _$FirebaseCleanupStateInitialImpl>
    implements _$$FirebaseCleanupStateInitialImplCopyWith<$Res> {
  __$$FirebaseCleanupStateInitialImplCopyWithImpl(
      _$FirebaseCleanupStateInitialImpl _value,
      $Res Function(_$FirebaseCleanupStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseCleanupStateInitialImpl implements FirebaseCleanupStateInitial {
  const _$FirebaseCleanupStateInitialImpl();

  @override
  String toString() {
    return 'FirebaseCleanupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupStateInitial implements FirebaseCleanupState {
  const factory FirebaseCleanupStateInitial() =
      _$FirebaseCleanupStateInitialImpl;
}

/// @nodoc
abstract class _$$FirebaseCleanupStateLoadingImplCopyWith<$Res> {
  factory _$$FirebaseCleanupStateLoadingImplCopyWith(
          _$FirebaseCleanupStateLoadingImpl value,
          $Res Function(_$FirebaseCleanupStateLoadingImpl) then) =
      __$$FirebaseCleanupStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseCleanupStateLoadingImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupStateCopyWithImpl<$Res,
        _$FirebaseCleanupStateLoadingImpl>
    implements _$$FirebaseCleanupStateLoadingImplCopyWith<$Res> {
  __$$FirebaseCleanupStateLoadingImplCopyWithImpl(
      _$FirebaseCleanupStateLoadingImpl _value,
      $Res Function(_$FirebaseCleanupStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseCleanupStateLoadingImpl implements FirebaseCleanupStateLoading {
  const _$FirebaseCleanupStateLoadingImpl();

  @override
  String toString() {
    return 'FirebaseCleanupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupStateLoading implements FirebaseCleanupState {
  const factory FirebaseCleanupStateLoading() =
      _$FirebaseCleanupStateLoadingImpl;
}

/// @nodoc
abstract class _$$FirebaseCleanupStateSuccessImplCopyWith<$Res> {
  factory _$$FirebaseCleanupStateSuccessImplCopyWith(
          _$FirebaseCleanupStateSuccessImpl value,
          $Res Function(_$FirebaseCleanupStateSuccessImpl) then) =
      __$$FirebaseCleanupStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deletedCount, int remainingCount});
}

/// @nodoc
class __$$FirebaseCleanupStateSuccessImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupStateCopyWithImpl<$Res,
        _$FirebaseCleanupStateSuccessImpl>
    implements _$$FirebaseCleanupStateSuccessImplCopyWith<$Res> {
  __$$FirebaseCleanupStateSuccessImplCopyWithImpl(
      _$FirebaseCleanupStateSuccessImpl _value,
      $Res Function(_$FirebaseCleanupStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedCount = null,
    Object? remainingCount = null,
  }) {
    return _then(_$FirebaseCleanupStateSuccessImpl(
      deletedCount: null == deletedCount
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCount: null == remainingCount
          ? _value.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FirebaseCleanupStateSuccessImpl implements FirebaseCleanupStateSuccess {
  const _$FirebaseCleanupStateSuccessImpl(
      {required this.deletedCount, required this.remainingCount});

  @override
  final int deletedCount;
  @override
  final int remainingCount;

  @override
  String toString() {
    return 'FirebaseCleanupState.success(deletedCount: $deletedCount, remainingCount: $remainingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupStateSuccessImpl &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount) &&
            (identical(other.remainingCount, remainingCount) ||
                other.remainingCount == remainingCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedCount, remainingCount);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseCleanupStateSuccessImplCopyWith<_$FirebaseCleanupStateSuccessImpl>
      get copyWith => __$$FirebaseCleanupStateSuccessImplCopyWithImpl<
          _$FirebaseCleanupStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) {
    return success(deletedCount, remainingCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(deletedCount, remainingCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(deletedCount, remainingCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupStateSuccess implements FirebaseCleanupState {
  const factory FirebaseCleanupStateSuccess(
      {required final int deletedCount,
      required final int remainingCount}) = _$FirebaseCleanupStateSuccessImpl;

  int get deletedCount;
  int get remainingCount;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseCleanupStateSuccessImplCopyWith<_$FirebaseCleanupStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirebaseCleanupStateFailureImplCopyWith<$Res> {
  factory _$$FirebaseCleanupStateFailureImplCopyWith(
          _$FirebaseCleanupStateFailureImpl value,
          $Res Function(_$FirebaseCleanupStateFailureImpl) then) =
      __$$FirebaseCleanupStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FirebaseCleanupStateFailureImplCopyWithImpl<$Res>
    extends _$FirebaseCleanupStateCopyWithImpl<$Res,
        _$FirebaseCleanupStateFailureImpl>
    implements _$$FirebaseCleanupStateFailureImplCopyWith<$Res> {
  __$$FirebaseCleanupStateFailureImplCopyWithImpl(
      _$FirebaseCleanupStateFailureImpl _value,
      $Res Function(_$FirebaseCleanupStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FirebaseCleanupStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseCleanupStateFailureImpl implements FirebaseCleanupStateFailure {
  const _$FirebaseCleanupStateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FirebaseCleanupState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseCleanupStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseCleanupStateFailureImplCopyWith<_$FirebaseCleanupStateFailureImpl>
      get copyWith => __$$FirebaseCleanupStateFailureImplCopyWithImpl<
          _$FirebaseCleanupStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FirebaseCleanupStateFailure implements FirebaseCleanupState {
  const factory FirebaseCleanupStateFailure({required final String error}) =
      _$FirebaseCleanupStateFailureImpl;

  String get error;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseCleanupStateFailureImplCopyWith<_$FirebaseCleanupStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
