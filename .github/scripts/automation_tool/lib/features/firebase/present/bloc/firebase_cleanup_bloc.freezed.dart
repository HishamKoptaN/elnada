// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_cleanup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirebaseCleanupEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FirebaseCleanupEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupEvent()';
  }
}

/// @nodoc
class $FirebaseCleanupEventCopyWith<$Res> {
  $FirebaseCleanupEventCopyWith(
      FirebaseCleanupEvent _, $Res Function(FirebaseCleanupEvent) __);
}

/// Adds pattern-matching-related methods to [FirebaseCleanupEvent].
extension FirebaseCleanupEventPatterns on FirebaseCleanupEvent {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupEventStarted value)? started,
    TResult Function(FirebaseCleanupEventClean value)? clean,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted() when started != null:
        return started(_that);
      case FirebaseCleanupEventClean() when clean != null:
        return clean(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupEventStarted value) started,
    required TResult Function(FirebaseCleanupEventClean value) clean,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted():
        return started(_that);
      case FirebaseCleanupEventClean():
        return clean(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupEventStarted value)? started,
    TResult? Function(FirebaseCleanupEventClean value)? clean,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted() when started != null:
        return started(_that);
      case FirebaseCleanupEventClean() when clean != null:
        return clean(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted() when started != null:
        return started();
      case FirebaseCleanupEventClean() when clean != null:
        return clean();
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clean,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted():
        return started();
      case FirebaseCleanupEventClean():
        return clean();
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clean,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupEventStarted() when started != null:
        return started();
      case FirebaseCleanupEventClean() when clean != null:
        return clean();
      case _:
        return null;
    }
  }
}

/// @nodoc

class FirebaseCleanupEventStarted implements FirebaseCleanupEvent {
  const FirebaseCleanupEventStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupEvent.started()';
  }
}

/// @nodoc

class FirebaseCleanupEventClean implements FirebaseCleanupEvent {
  const FirebaseCleanupEventClean();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupEventClean);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupEvent.clean()';
  }
}

/// @nodoc
mixin _$FirebaseCleanupState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FirebaseCleanupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupState()';
  }
}

/// @nodoc
class $FirebaseCleanupStateCopyWith<$Res> {
  $FirebaseCleanupStateCopyWith(
      FirebaseCleanupState _, $Res Function(FirebaseCleanupState) __);
}

/// Adds pattern-matching-related methods to [FirebaseCleanupState].
extension FirebaseCleanupStatePatterns on FirebaseCleanupState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseCleanupStateInitial value)? initial,
    TResult Function(FirebaseCleanupStateLoading value)? loading,
    TResult Function(FirebaseCleanupStateSuccess value)? success,
    TResult Function(FirebaseCleanupStateFailure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial() when initial != null:
        return initial(_that);
      case FirebaseCleanupStateLoading() when loading != null:
        return loading(_that);
      case FirebaseCleanupStateSuccess() when success != null:
        return success(_that);
      case FirebaseCleanupStateFailure() when failure != null:
        return failure(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseCleanupStateInitial value) initial,
    required TResult Function(FirebaseCleanupStateLoading value) loading,
    required TResult Function(FirebaseCleanupStateSuccess value) success,
    required TResult Function(FirebaseCleanupStateFailure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial():
        return initial(_that);
      case FirebaseCleanupStateLoading():
        return loading(_that);
      case FirebaseCleanupStateSuccess():
        return success(_that);
      case FirebaseCleanupStateFailure():
        return failure(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirebaseCleanupStateInitial value)? initial,
    TResult? Function(FirebaseCleanupStateLoading value)? loading,
    TResult? Function(FirebaseCleanupStateSuccess value)? success,
    TResult? Function(FirebaseCleanupStateFailure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial() when initial != null:
        return initial(_that);
      case FirebaseCleanupStateLoading() when loading != null:
        return loading(_that);
      case FirebaseCleanupStateSuccess() when success != null:
        return success(_that);
      case FirebaseCleanupStateFailure() when failure != null:
        return failure(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deletedCount, int remainingCount)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial() when initial != null:
        return initial();
      case FirebaseCleanupStateLoading() when loading != null:
        return loading();
      case FirebaseCleanupStateSuccess() when success != null:
        return success(_that.deletedCount, _that.remainingCount);
      case FirebaseCleanupStateFailure() when failure != null:
        return failure(_that.error);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deletedCount, int remainingCount) success,
    required TResult Function(String error) failure,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial():
        return initial();
      case FirebaseCleanupStateLoading():
        return loading();
      case FirebaseCleanupStateSuccess():
        return success(_that.deletedCount, _that.remainingCount);
      case FirebaseCleanupStateFailure():
        return failure(_that.error);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deletedCount, int remainingCount)? success,
    TResult? Function(String error)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case FirebaseCleanupStateInitial() when initial != null:
        return initial();
      case FirebaseCleanupStateLoading() when loading != null:
        return loading();
      case FirebaseCleanupStateSuccess() when success != null:
        return success(_that.deletedCount, _that.remainingCount);
      case FirebaseCleanupStateFailure() when failure != null:
        return failure(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FirebaseCleanupStateInitial implements FirebaseCleanupState {
  const FirebaseCleanupStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupState.initial()';
  }
}

/// @nodoc

class FirebaseCleanupStateLoading implements FirebaseCleanupState {
  const FirebaseCleanupStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FirebaseCleanupState.loading()';
  }
}

/// @nodoc

class FirebaseCleanupStateSuccess implements FirebaseCleanupState {
  const FirebaseCleanupStateSuccess(
      {required this.deletedCount, required this.remainingCount});

  final int deletedCount;
  final int remainingCount;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseCleanupStateSuccessCopyWith<FirebaseCleanupStateSuccess>
      get copyWith => _$FirebaseCleanupStateSuccessCopyWithImpl<
          FirebaseCleanupStateSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupStateSuccess &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount) &&
            (identical(other.remainingCount, remainingCount) ||
                other.remainingCount == remainingCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedCount, remainingCount);

  @override
  String toString() {
    return 'FirebaseCleanupState.success(deletedCount: $deletedCount, remainingCount: $remainingCount)';
  }
}

/// @nodoc
abstract mixin class $FirebaseCleanupStateSuccessCopyWith<$Res>
    implements $FirebaseCleanupStateCopyWith<$Res> {
  factory $FirebaseCleanupStateSuccessCopyWith(
          FirebaseCleanupStateSuccess value,
          $Res Function(FirebaseCleanupStateSuccess) _then) =
      _$FirebaseCleanupStateSuccessCopyWithImpl;
  @useResult
  $Res call({int deletedCount, int remainingCount});
}

/// @nodoc
class _$FirebaseCleanupStateSuccessCopyWithImpl<$Res>
    implements $FirebaseCleanupStateSuccessCopyWith<$Res> {
  _$FirebaseCleanupStateSuccessCopyWithImpl(this._self, this._then);

  final FirebaseCleanupStateSuccess _self;
  final $Res Function(FirebaseCleanupStateSuccess) _then;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deletedCount = null,
    Object? remainingCount = null,
  }) {
    return _then(FirebaseCleanupStateSuccess(
      deletedCount: null == deletedCount
          ? _self.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCount: null == remainingCount
          ? _self.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class FirebaseCleanupStateFailure implements FirebaseCleanupState {
  const FirebaseCleanupStateFailure({required this.error});

  final String error;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseCleanupStateFailureCopyWith<FirebaseCleanupStateFailure>
      get copyWith => _$FirebaseCleanupStateFailureCopyWithImpl<
          FirebaseCleanupStateFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseCleanupStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'FirebaseCleanupState.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $FirebaseCleanupStateFailureCopyWith<$Res>
    implements $FirebaseCleanupStateCopyWith<$Res> {
  factory $FirebaseCleanupStateFailureCopyWith(
          FirebaseCleanupStateFailure value,
          $Res Function(FirebaseCleanupStateFailure) _then) =
      _$FirebaseCleanupStateFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$FirebaseCleanupStateFailureCopyWithImpl<$Res>
    implements $FirebaseCleanupStateFailureCopyWith<$Res> {
  _$FirebaseCleanupStateFailureCopyWithImpl(this._self, this._then);

  final FirebaseCleanupStateFailure _self;
  final $Res Function(FirebaseCleanupStateFailure) _then;

  /// Create a copy of FirebaseCleanupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(FirebaseCleanupStateFailure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
