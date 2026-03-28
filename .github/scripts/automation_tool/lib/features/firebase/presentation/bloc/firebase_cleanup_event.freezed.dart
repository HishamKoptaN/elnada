// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_cleanup_event.dart';

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
