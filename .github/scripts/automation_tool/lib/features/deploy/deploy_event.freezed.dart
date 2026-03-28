// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deploy_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeployEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDeployment,
    required TResult Function() startCleanup,
    required TResult Function() startBuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDeployment,
    TResult? Function()? startCleanup,
    TResult? Function()? startBuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDeployment,
    TResult Function()? startCleanup,
    TResult Function()? startBuild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployEventStartDeployment value) startDeployment,
    required TResult Function(DeployEventStartCleanup value) startCleanup,
    required TResult Function(DeployEventStartBuild value) startBuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployEventStartDeployment value)? startDeployment,
    TResult? Function(DeployEventStartCleanup value)? startCleanup,
    TResult? Function(DeployEventStartBuild value)? startBuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployEventStartDeployment value)? startDeployment,
    TResult Function(DeployEventStartCleanup value)? startCleanup,
    TResult Function(DeployEventStartBuild value)? startBuild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeployEventCopyWith<$Res> {
  factory $DeployEventCopyWith(
          DeployEvent value, $Res Function(DeployEvent) then) =
      _$DeployEventCopyWithImpl<$Res, DeployEvent>;
}

/// @nodoc
class _$DeployEventCopyWithImpl<$Res, $Val extends DeployEvent>
    implements $DeployEventCopyWith<$Res> {
  _$DeployEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeployEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeployEventStartDeploymentImplCopyWith<$Res> {
  factory _$$DeployEventStartDeploymentImplCopyWith(
          _$DeployEventStartDeploymentImpl value,
          $Res Function(_$DeployEventStartDeploymentImpl) then) =
      __$$DeployEventStartDeploymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployEventStartDeploymentImplCopyWithImpl<$Res>
    extends _$DeployEventCopyWithImpl<$Res, _$DeployEventStartDeploymentImpl>
    implements _$$DeployEventStartDeploymentImplCopyWith<$Res> {
  __$$DeployEventStartDeploymentImplCopyWithImpl(
      _$DeployEventStartDeploymentImpl _value,
      $Res Function(_$DeployEventStartDeploymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployEventStartDeploymentImpl implements DeployEventStartDeployment {
  const _$DeployEventStartDeploymentImpl();

  @override
  String toString() {
    return 'DeployEvent.startDeployment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployEventStartDeploymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDeployment,
    required TResult Function() startCleanup,
    required TResult Function() startBuild,
  }) {
    return startDeployment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDeployment,
    TResult? Function()? startCleanup,
    TResult? Function()? startBuild,
  }) {
    return startDeployment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDeployment,
    TResult Function()? startCleanup,
    TResult Function()? startBuild,
    required TResult orElse(),
  }) {
    if (startDeployment != null) {
      return startDeployment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployEventStartDeployment value) startDeployment,
    required TResult Function(DeployEventStartCleanup value) startCleanup,
    required TResult Function(DeployEventStartBuild value) startBuild,
  }) {
    return startDeployment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployEventStartDeployment value)? startDeployment,
    TResult? Function(DeployEventStartCleanup value)? startCleanup,
    TResult? Function(DeployEventStartBuild value)? startBuild,
  }) {
    return startDeployment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployEventStartDeployment value)? startDeployment,
    TResult Function(DeployEventStartCleanup value)? startCleanup,
    TResult Function(DeployEventStartBuild value)? startBuild,
    required TResult orElse(),
  }) {
    if (startDeployment != null) {
      return startDeployment(this);
    }
    return orElse();
  }
}

abstract class DeployEventStartDeployment implements DeployEvent {
  const factory DeployEventStartDeployment() = _$DeployEventStartDeploymentImpl;
}

/// @nodoc
abstract class _$$DeployEventStartCleanupImplCopyWith<$Res> {
  factory _$$DeployEventStartCleanupImplCopyWith(
          _$DeployEventStartCleanupImpl value,
          $Res Function(_$DeployEventStartCleanupImpl) then) =
      __$$DeployEventStartCleanupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployEventStartCleanupImplCopyWithImpl<$Res>
    extends _$DeployEventCopyWithImpl<$Res, _$DeployEventStartCleanupImpl>
    implements _$$DeployEventStartCleanupImplCopyWith<$Res> {
  __$$DeployEventStartCleanupImplCopyWithImpl(
      _$DeployEventStartCleanupImpl _value,
      $Res Function(_$DeployEventStartCleanupImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployEventStartCleanupImpl implements DeployEventStartCleanup {
  const _$DeployEventStartCleanupImpl();

  @override
  String toString() {
    return 'DeployEvent.startCleanup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployEventStartCleanupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDeployment,
    required TResult Function() startCleanup,
    required TResult Function() startBuild,
  }) {
    return startCleanup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDeployment,
    TResult? Function()? startCleanup,
    TResult? Function()? startBuild,
  }) {
    return startCleanup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDeployment,
    TResult Function()? startCleanup,
    TResult Function()? startBuild,
    required TResult orElse(),
  }) {
    if (startCleanup != null) {
      return startCleanup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployEventStartDeployment value) startDeployment,
    required TResult Function(DeployEventStartCleanup value) startCleanup,
    required TResult Function(DeployEventStartBuild value) startBuild,
  }) {
    return startCleanup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployEventStartDeployment value)? startDeployment,
    TResult? Function(DeployEventStartCleanup value)? startCleanup,
    TResult? Function(DeployEventStartBuild value)? startBuild,
  }) {
    return startCleanup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployEventStartDeployment value)? startDeployment,
    TResult Function(DeployEventStartCleanup value)? startCleanup,
    TResult Function(DeployEventStartBuild value)? startBuild,
    required TResult orElse(),
  }) {
    if (startCleanup != null) {
      return startCleanup(this);
    }
    return orElse();
  }
}

abstract class DeployEventStartCleanup implements DeployEvent {
  const factory DeployEventStartCleanup() = _$DeployEventStartCleanupImpl;
}

/// @nodoc
abstract class _$$DeployEventStartBuildImplCopyWith<$Res> {
  factory _$$DeployEventStartBuildImplCopyWith(
          _$DeployEventStartBuildImpl value,
          $Res Function(_$DeployEventStartBuildImpl) then) =
      __$$DeployEventStartBuildImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployEventStartBuildImplCopyWithImpl<$Res>
    extends _$DeployEventCopyWithImpl<$Res, _$DeployEventStartBuildImpl>
    implements _$$DeployEventStartBuildImplCopyWith<$Res> {
  __$$DeployEventStartBuildImplCopyWithImpl(_$DeployEventStartBuildImpl _value,
      $Res Function(_$DeployEventStartBuildImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployEventStartBuildImpl implements DeployEventStartBuild {
  const _$DeployEventStartBuildImpl();

  @override
  String toString() {
    return 'DeployEvent.startBuild()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployEventStartBuildImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startDeployment,
    required TResult Function() startCleanup,
    required TResult Function() startBuild,
  }) {
    return startBuild();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startDeployment,
    TResult? Function()? startCleanup,
    TResult? Function()? startBuild,
  }) {
    return startBuild?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startDeployment,
    TResult Function()? startCleanup,
    TResult Function()? startBuild,
    required TResult orElse(),
  }) {
    if (startBuild != null) {
      return startBuild();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployEventStartDeployment value) startDeployment,
    required TResult Function(DeployEventStartCleanup value) startCleanup,
    required TResult Function(DeployEventStartBuild value) startBuild,
  }) {
    return startBuild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployEventStartDeployment value)? startDeployment,
    TResult? Function(DeployEventStartCleanup value)? startCleanup,
    TResult? Function(DeployEventStartBuild value)? startBuild,
  }) {
    return startBuild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployEventStartDeployment value)? startDeployment,
    TResult Function(DeployEventStartCleanup value)? startCleanup,
    TResult Function(DeployEventStartBuild value)? startBuild,
    required TResult orElse(),
  }) {
    if (startBuild != null) {
      return startBuild(this);
    }
    return orElse();
  }
}

abstract class DeployEventStartBuild implements DeployEvent {
  const factory DeployEventStartBuild() = _$DeployEventStartBuildImpl;
}
