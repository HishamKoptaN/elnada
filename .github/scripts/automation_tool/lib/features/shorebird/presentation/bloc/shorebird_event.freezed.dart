// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorebird_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShorebirdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShorebirdEventCopyWith<$Res> {
  factory $ShorebirdEventCopyWith(
          ShorebirdEvent value, $Res Function(ShorebirdEvent) then) =
      _$ShorebirdEventCopyWithImpl<$Res, ShorebirdEvent>;
}

/// @nodoc
class _$ShorebirdEventCopyWithImpl<$Res, $Val extends ShorebirdEvent>
    implements $ShorebirdEventCopyWith<$Res> {
  _$ShorebirdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShorebirdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShorebirdEventStartedImplCopyWith<$Res> {
  factory _$$ShorebirdEventStartedImplCopyWith(
          _$ShorebirdEventStartedImpl value,
          $Res Function(_$ShorebirdEventStartedImpl) then) =
      __$$ShorebirdEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdEventStartedImplCopyWithImpl<$Res>
    extends _$ShorebirdEventCopyWithImpl<$Res, _$ShorebirdEventStartedImpl>
    implements _$$ShorebirdEventStartedImplCopyWith<$Res> {
  __$$ShorebirdEventStartedImplCopyWithImpl(_$ShorebirdEventStartedImpl _value,
      $Res Function(_$ShorebirdEventStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdEventStartedImpl implements ShorebirdEventStarted {
  const _$ShorebirdEventStartedImpl();

  @override
  String toString() {
    return 'ShorebirdEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
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
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ShorebirdEventStarted implements ShorebirdEvent {
  const factory ShorebirdEventStarted() = _$ShorebirdEventStartedImpl;
}

/// @nodoc
abstract class _$$ShorebirdEventCheckVersionImplCopyWith<$Res> {
  factory _$$ShorebirdEventCheckVersionImplCopyWith(
          _$ShorebirdEventCheckVersionImpl value,
          $Res Function(_$ShorebirdEventCheckVersionImpl) then) =
      __$$ShorebirdEventCheckVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdEventCheckVersionImplCopyWithImpl<$Res>
    extends _$ShorebirdEventCopyWithImpl<$Res, _$ShorebirdEventCheckVersionImpl>
    implements _$$ShorebirdEventCheckVersionImplCopyWith<$Res> {
  __$$ShorebirdEventCheckVersionImplCopyWithImpl(
      _$ShorebirdEventCheckVersionImpl _value,
      $Res Function(_$ShorebirdEventCheckVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdEventCheckVersionImpl implements ShorebirdEventCheckVersion {
  const _$ShorebirdEventCheckVersionImpl();

  @override
  String toString() {
    return 'ShorebirdEvent.checkVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdEventCheckVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) {
    return checkVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) {
    return checkVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
    required TResult orElse(),
  }) {
    if (checkVersion != null) {
      return checkVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) {
    return checkVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) {
    return checkVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) {
    if (checkVersion != null) {
      return checkVersion(this);
    }
    return orElse();
  }
}

abstract class ShorebirdEventCheckVersion implements ShorebirdEvent {
  const factory ShorebirdEventCheckVersion() = _$ShorebirdEventCheckVersionImpl;
}

/// @nodoc
abstract class _$$ShorebirdEventDeployPatchImplCopyWith<$Res> {
  factory _$$ShorebirdEventDeployPatchImplCopyWith(
          _$ShorebirdEventDeployPatchImpl value,
          $Res Function(_$ShorebirdEventDeployPatchImpl) then) =
      __$$ShorebirdEventDeployPatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdEventDeployPatchImplCopyWithImpl<$Res>
    extends _$ShorebirdEventCopyWithImpl<$Res, _$ShorebirdEventDeployPatchImpl>
    implements _$$ShorebirdEventDeployPatchImplCopyWith<$Res> {
  __$$ShorebirdEventDeployPatchImplCopyWithImpl(
      _$ShorebirdEventDeployPatchImpl _value,
      $Res Function(_$ShorebirdEventDeployPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdEventDeployPatchImpl implements ShorebirdEventDeployPatch {
  const _$ShorebirdEventDeployPatchImpl();

  @override
  String toString() {
    return 'ShorebirdEvent.deployPatch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdEventDeployPatchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) {
    return deployPatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) {
    return deployPatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
    required TResult orElse(),
  }) {
    if (deployPatch != null) {
      return deployPatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) {
    return deployPatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) {
    return deployPatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) {
    if (deployPatch != null) {
      return deployPatch(this);
    }
    return orElse();
  }
}

abstract class ShorebirdEventDeployPatch implements ShorebirdEvent {
  const factory ShorebirdEventDeployPatch() = _$ShorebirdEventDeployPatchImpl;
}

/// @nodoc
abstract class _$$ShorebirdEventDeployReleaseImplCopyWith<$Res> {
  factory _$$ShorebirdEventDeployReleaseImplCopyWith(
          _$ShorebirdEventDeployReleaseImpl value,
          $Res Function(_$ShorebirdEventDeployReleaseImpl) then) =
      __$$ShorebirdEventDeployReleaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdEventDeployReleaseImplCopyWithImpl<$Res>
    extends _$ShorebirdEventCopyWithImpl<$Res,
        _$ShorebirdEventDeployReleaseImpl>
    implements _$$ShorebirdEventDeployReleaseImplCopyWith<$Res> {
  __$$ShorebirdEventDeployReleaseImplCopyWithImpl(
      _$ShorebirdEventDeployReleaseImpl _value,
      $Res Function(_$ShorebirdEventDeployReleaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdEventDeployReleaseImpl implements ShorebirdEventDeployRelease {
  const _$ShorebirdEventDeployReleaseImpl();

  @override
  String toString() {
    return 'ShorebirdEvent.deployRelease()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdEventDeployReleaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) {
    return deployRelease();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) {
    return deployRelease?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
    required TResult orElse(),
  }) {
    if (deployRelease != null) {
      return deployRelease();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) {
    return deployRelease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) {
    return deployRelease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) {
    if (deployRelease != null) {
      return deployRelease(this);
    }
    return orElse();
  }
}

abstract class ShorebirdEventDeployRelease implements ShorebirdEvent {
  const factory ShorebirdEventDeployRelease() =
      _$ShorebirdEventDeployReleaseImpl;
}
