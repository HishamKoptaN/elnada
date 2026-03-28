// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deploy_bloc.dart';

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

/// @nodoc
mixin _$DeployState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeployStateCopyWith<$Res> {
  factory $DeployStateCopyWith(
          DeployState value, $Res Function(DeployState) then) =
      _$DeployStateCopyWithImpl<$Res, DeployState>;
}

/// @nodoc
class _$DeployStateCopyWithImpl<$Res, $Val extends DeployState>
    implements $DeployStateCopyWith<$Res> {
  _$DeployStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeployStateInitialImplCopyWith<$Res> {
  factory _$$DeployStateInitialImplCopyWith(_$DeployStateInitialImpl value,
          $Res Function(_$DeployStateInitialImpl) then) =
      __$$DeployStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateInitialImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateInitialImpl>
    implements _$$DeployStateInitialImplCopyWith<$Res> {
  __$$DeployStateInitialImplCopyWithImpl(_$DeployStateInitialImpl _value,
      $Res Function(_$DeployStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateInitialImpl implements DeployStateInitial {
  const _$DeployStateInitialImpl();

  @override
  String toString() {
    return 'DeployState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeployStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
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
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeployStateInitial implements DeployState {
  const factory DeployStateInitial() = _$DeployStateInitialImpl;
}

/// @nodoc
abstract class _$$DeployStateLoadingImplCopyWith<$Res> {
  factory _$$DeployStateLoadingImplCopyWith(_$DeployStateLoadingImpl value,
          $Res Function(_$DeployStateLoadingImpl) then) =
      __$$DeployStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeployStateLoadingImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateLoadingImpl>
    implements _$$DeployStateLoadingImplCopyWith<$Res> {
  __$$DeployStateLoadingImplCopyWithImpl(_$DeployStateLoadingImpl _value,
      $Res Function(_$DeployStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeployStateLoadingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeployStateLoadingImpl implements DeployStateLoading {
  const _$DeployStateLoadingImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DeployState.loading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateLoadingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployStateLoadingImplCopyWith<_$DeployStateLoadingImpl> get copyWith =>
      __$$DeployStateLoadingImplCopyWithImpl<_$DeployStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeployStateLoading implements DeployState {
  const factory DeployStateLoading({required final String message}) =
      _$DeployStateLoadingImpl;

  String get message;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployStateLoadingImplCopyWith<_$DeployStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployStateBuildingImplCopyWith<$Res> {
  factory _$$DeployStateBuildingImplCopyWith(_$DeployStateBuildingImpl value,
          $Res Function(_$DeployStateBuildingImpl) then) =
      __$$DeployStateBuildingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateBuildingImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateBuildingImpl>
    implements _$$DeployStateBuildingImplCopyWith<$Res> {
  __$$DeployStateBuildingImplCopyWithImpl(_$DeployStateBuildingImpl _value,
      $Res Function(_$DeployStateBuildingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateBuildingImpl implements DeployStateBuilding {
  const _$DeployStateBuildingImpl();

  @override
  String toString() {
    return 'DeployState.building()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateBuildingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return building();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return building?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (building != null) {
      return building();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return building(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return building?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (building != null) {
      return building(this);
    }
    return orElse();
  }
}

abstract class DeployStateBuilding implements DeployState {
  const factory DeployStateBuilding() = _$DeployStateBuildingImpl;
}

/// @nodoc
abstract class _$$DeployStateBuildSuccessImplCopyWith<$Res> {
  factory _$$DeployStateBuildSuccessImplCopyWith(
          _$DeployStateBuildSuccessImpl value,
          $Res Function(_$DeployStateBuildSuccessImpl) then) =
      __$$DeployStateBuildSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String outputPath});
}

/// @nodoc
class __$$DeployStateBuildSuccessImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateBuildSuccessImpl>
    implements _$$DeployStateBuildSuccessImplCopyWith<$Res> {
  __$$DeployStateBuildSuccessImplCopyWithImpl(
      _$DeployStateBuildSuccessImpl _value,
      $Res Function(_$DeployStateBuildSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputPath = null,
  }) {
    return _then(_$DeployStateBuildSuccessImpl(
      outputPath: null == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeployStateBuildSuccessImpl implements DeployStateBuildSuccess {
  const _$DeployStateBuildSuccessImpl({required this.outputPath});

  @override
  final String outputPath;

  @override
  String toString() {
    return 'DeployState.buildSuccess(outputPath: $outputPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateBuildSuccessImpl &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outputPath);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployStateBuildSuccessImplCopyWith<_$DeployStateBuildSuccessImpl>
      get copyWith => __$$DeployStateBuildSuccessImplCopyWithImpl<
          _$DeployStateBuildSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return buildSuccess(outputPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return buildSuccess?.call(outputPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (buildSuccess != null) {
      return buildSuccess(outputPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return buildSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return buildSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (buildSuccess != null) {
      return buildSuccess(this);
    }
    return orElse();
  }
}

abstract class DeployStateBuildSuccess implements DeployState {
  const factory DeployStateBuildSuccess({required final String outputPath}) =
      _$DeployStateBuildSuccessImpl;

  String get outputPath;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployStateBuildSuccessImplCopyWith<_$DeployStateBuildSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployStateCheckingVersionImplCopyWith<$Res> {
  factory _$$DeployStateCheckingVersionImplCopyWith(
          _$DeployStateCheckingVersionImpl value,
          $Res Function(_$DeployStateCheckingVersionImpl) then) =
      __$$DeployStateCheckingVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateCheckingVersionImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateCheckingVersionImpl>
    implements _$$DeployStateCheckingVersionImplCopyWith<$Res> {
  __$$DeployStateCheckingVersionImplCopyWithImpl(
      _$DeployStateCheckingVersionImpl _value,
      $Res Function(_$DeployStateCheckingVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateCheckingVersionImpl implements DeployStateCheckingVersion {
  const _$DeployStateCheckingVersionImpl();

  @override
  String toString() {
    return 'DeployState.checkingVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateCheckingVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return checkingVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return checkingVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (checkingVersion != null) {
      return checkingVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return checkingVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return checkingVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (checkingVersion != null) {
      return checkingVersion(this);
    }
    return orElse();
  }
}

abstract class DeployStateCheckingVersion implements DeployState {
  const factory DeployStateCheckingVersion() = _$DeployStateCheckingVersionImpl;
}

/// @nodoc
abstract class _$$DeployStateDeployingPatchImplCopyWith<$Res> {
  factory _$$DeployStateDeployingPatchImplCopyWith(
          _$DeployStateDeployingPatchImpl value,
          $Res Function(_$DeployStateDeployingPatchImpl) then) =
      __$$DeployStateDeployingPatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateDeployingPatchImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateDeployingPatchImpl>
    implements _$$DeployStateDeployingPatchImplCopyWith<$Res> {
  __$$DeployStateDeployingPatchImplCopyWithImpl(
      _$DeployStateDeployingPatchImpl _value,
      $Res Function(_$DeployStateDeployingPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateDeployingPatchImpl implements DeployStateDeployingPatch {
  const _$DeployStateDeployingPatchImpl();

  @override
  String toString() {
    return 'DeployState.deployingPatch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateDeployingPatchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return deployingPatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return deployingPatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (deployingPatch != null) {
      return deployingPatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return deployingPatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return deployingPatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (deployingPatch != null) {
      return deployingPatch(this);
    }
    return orElse();
  }
}

abstract class DeployStateDeployingPatch implements DeployState {
  const factory DeployStateDeployingPatch() = _$DeployStateDeployingPatchImpl;
}

/// @nodoc
abstract class _$$DeployStatePatchSuccessImplCopyWith<$Res> {
  factory _$$DeployStatePatchSuccessImplCopyWith(
          _$DeployStatePatchSuccessImpl value,
          $Res Function(_$DeployStatePatchSuccessImpl) then) =
      __$$DeployStatePatchSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStatePatchSuccessImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStatePatchSuccessImpl>
    implements _$$DeployStatePatchSuccessImplCopyWith<$Res> {
  __$$DeployStatePatchSuccessImplCopyWithImpl(
      _$DeployStatePatchSuccessImpl _value,
      $Res Function(_$DeployStatePatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStatePatchSuccessImpl implements DeployStatePatchSuccess {
  const _$DeployStatePatchSuccessImpl();

  @override
  String toString() {
    return 'DeployState.patchSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStatePatchSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return patchSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return patchSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (patchSuccess != null) {
      return patchSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return patchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return patchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (patchSuccess != null) {
      return patchSuccess(this);
    }
    return orElse();
  }
}

abstract class DeployStatePatchSuccess implements DeployState {
  const factory DeployStatePatchSuccess() = _$DeployStatePatchSuccessImpl;
}

/// @nodoc
abstract class _$$DeployStateDeployingReleaseImplCopyWith<$Res> {
  factory _$$DeployStateDeployingReleaseImplCopyWith(
          _$DeployStateDeployingReleaseImpl value,
          $Res Function(_$DeployStateDeployingReleaseImpl) then) =
      __$$DeployStateDeployingReleaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateDeployingReleaseImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateDeployingReleaseImpl>
    implements _$$DeployStateDeployingReleaseImplCopyWith<$Res> {
  __$$DeployStateDeployingReleaseImplCopyWithImpl(
      _$DeployStateDeployingReleaseImpl _value,
      $Res Function(_$DeployStateDeployingReleaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateDeployingReleaseImpl implements DeployStateDeployingRelease {
  const _$DeployStateDeployingReleaseImpl();

  @override
  String toString() {
    return 'DeployState.deployingRelease()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateDeployingReleaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return deployingRelease();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return deployingRelease?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (deployingRelease != null) {
      return deployingRelease();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return deployingRelease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return deployingRelease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (deployingRelease != null) {
      return deployingRelease(this);
    }
    return orElse();
  }
}

abstract class DeployStateDeployingRelease implements DeployState {
  const factory DeployStateDeployingRelease() =
      _$DeployStateDeployingReleaseImpl;
}

/// @nodoc
abstract class _$$DeployStateReleaseSuccessImplCopyWith<$Res> {
  factory _$$DeployStateReleaseSuccessImplCopyWith(
          _$DeployStateReleaseSuccessImpl value,
          $Res Function(_$DeployStateReleaseSuccessImpl) then) =
      __$$DeployStateReleaseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VersionInfo version, bool isNewRelease});

  $VersionInfoCopyWith<$Res> get version;
}

/// @nodoc
class __$$DeployStateReleaseSuccessImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateReleaseSuccessImpl>
    implements _$$DeployStateReleaseSuccessImplCopyWith<$Res> {
  __$$DeployStateReleaseSuccessImplCopyWithImpl(
      _$DeployStateReleaseSuccessImpl _value,
      $Res Function(_$DeployStateReleaseSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? isNewRelease = null,
  }) {
    return _then(_$DeployStateReleaseSuccessImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionInfo,
      isNewRelease: null == isNewRelease
          ? _value.isNewRelease
          : isNewRelease // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionInfoCopyWith<$Res> get version {
    return $VersionInfoCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value));
    });
  }
}

/// @nodoc

class _$DeployStateReleaseSuccessImpl implements DeployStateReleaseSuccess {
  const _$DeployStateReleaseSuccessImpl(
      {required this.version, required this.isNewRelease});

  @override
  final VersionInfo version;
  @override
  final bool isNewRelease;

  @override
  String toString() {
    return 'DeployState.releaseSuccess(version: $version, isNewRelease: $isNewRelease)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateReleaseSuccessImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isNewRelease, isNewRelease) ||
                other.isNewRelease == isNewRelease));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, isNewRelease);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployStateReleaseSuccessImplCopyWith<_$DeployStateReleaseSuccessImpl>
      get copyWith => __$$DeployStateReleaseSuccessImplCopyWithImpl<
          _$DeployStateReleaseSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return releaseSuccess(version, isNewRelease);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return releaseSuccess?.call(version, isNewRelease);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess(version, isNewRelease);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return releaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return releaseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess(this);
    }
    return orElse();
  }
}

abstract class DeployStateReleaseSuccess implements DeployState {
  const factory DeployStateReleaseSuccess(
      {required final VersionInfo version,
      required final bool isNewRelease}) = _$DeployStateReleaseSuccessImpl;

  VersionInfo get version;
  bool get isNewRelease;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployStateReleaseSuccessImplCopyWith<_$DeployStateReleaseSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployStateCleaningFirebaseImplCopyWith<$Res> {
  factory _$$DeployStateCleaningFirebaseImplCopyWith(
          _$DeployStateCleaningFirebaseImpl value,
          $Res Function(_$DeployStateCleaningFirebaseImpl) then) =
      __$$DeployStateCleaningFirebaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateCleaningFirebaseImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateCleaningFirebaseImpl>
    implements _$$DeployStateCleaningFirebaseImplCopyWith<$Res> {
  __$$DeployStateCleaningFirebaseImplCopyWithImpl(
      _$DeployStateCleaningFirebaseImpl _value,
      $Res Function(_$DeployStateCleaningFirebaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateCleaningFirebaseImpl implements DeployStateCleaningFirebase {
  const _$DeployStateCleaningFirebaseImpl();

  @override
  String toString() {
    return 'DeployState.cleaningFirebase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateCleaningFirebaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return cleaningFirebase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return cleaningFirebase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (cleaningFirebase != null) {
      return cleaningFirebase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return cleaningFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return cleaningFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (cleaningFirebase != null) {
      return cleaningFirebase(this);
    }
    return orElse();
  }
}

abstract class DeployStateCleaningFirebase implements DeployState {
  const factory DeployStateCleaningFirebase() =
      _$DeployStateCleaningFirebaseImpl;
}

/// @nodoc
abstract class _$$DeployStateCleanupSuccessImplCopyWith<$Res> {
  factory _$$DeployStateCleanupSuccessImplCopyWith(
          _$DeployStateCleanupSuccessImpl value,
          $Res Function(_$DeployStateCleanupSuccessImpl) then) =
      __$$DeployStateCleanupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deletedCount});
}

/// @nodoc
class __$$DeployStateCleanupSuccessImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateCleanupSuccessImpl>
    implements _$$DeployStateCleanupSuccessImplCopyWith<$Res> {
  __$$DeployStateCleanupSuccessImplCopyWithImpl(
      _$DeployStateCleanupSuccessImpl _value,
      $Res Function(_$DeployStateCleanupSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedCount = null,
  }) {
    return _then(_$DeployStateCleanupSuccessImpl(
      deletedCount: null == deletedCount
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeployStateCleanupSuccessImpl implements DeployStateCleanupSuccess {
  const _$DeployStateCleanupSuccessImpl({required this.deletedCount});

  @override
  final int deletedCount;

  @override
  String toString() {
    return 'DeployState.cleanupSuccess(deletedCount: $deletedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateCleanupSuccessImpl &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedCount);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployStateCleanupSuccessImplCopyWith<_$DeployStateCleanupSuccessImpl>
      get copyWith => __$$DeployStateCleanupSuccessImplCopyWithImpl<
          _$DeployStateCleanupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return cleanupSuccess(deletedCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return cleanupSuccess?.call(deletedCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (cleanupSuccess != null) {
      return cleanupSuccess(deletedCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return cleanupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return cleanupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (cleanupSuccess != null) {
      return cleanupSuccess(this);
    }
    return orElse();
  }
}

abstract class DeployStateCleanupSuccess implements DeployState {
  const factory DeployStateCleanupSuccess({required final int deletedCount}) =
      _$DeployStateCleanupSuccessImpl;

  int get deletedCount;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployStateCleanupSuccessImplCopyWith<_$DeployStateCleanupSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployStateFailureImplCopyWith<$Res> {
  factory _$$DeployStateFailureImplCopyWith(_$DeployStateFailureImpl value,
          $Res Function(_$DeployStateFailureImpl) then) =
      __$$DeployStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String step, String error});
}

/// @nodoc
class __$$DeployStateFailureImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateFailureImpl>
    implements _$$DeployStateFailureImplCopyWith<$Res> {
  __$$DeployStateFailureImplCopyWithImpl(_$DeployStateFailureImpl _value,
      $Res Function(_$DeployStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? error = null,
  }) {
    return _then(_$DeployStateFailureImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeployStateFailureImpl implements DeployStateFailure {
  const _$DeployStateFailureImpl({required this.step, required this.error});

  @override
  final String step;
  @override
  final String error;

  @override
  String toString() {
    return 'DeployState.failure(step: $step, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateFailureImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step, error);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployStateFailureImplCopyWith<_$DeployStateFailureImpl> get copyWith =>
      __$$DeployStateFailureImplCopyWithImpl<_$DeployStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return failure(step, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return failure?.call(step, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(step, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DeployStateFailure implements DeployState {
  const factory DeployStateFailure(
      {required final String step,
      required final String error}) = _$DeployStateFailureImpl;

  String get step;
  String get error;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployStateFailureImplCopyWith<_$DeployStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployStateCompletedImplCopyWith<$Res> {
  factory _$$DeployStateCompletedImplCopyWith(_$DeployStateCompletedImpl value,
          $Res Function(_$DeployStateCompletedImpl) then) =
      __$$DeployStateCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployStateCompletedImplCopyWithImpl<$Res>
    extends _$DeployStateCopyWithImpl<$Res, _$DeployStateCompletedImpl>
    implements _$$DeployStateCompletedImplCopyWith<$Res> {
  __$$DeployStateCompletedImplCopyWithImpl(_$DeployStateCompletedImpl _value,
      $Res Function(_$DeployStateCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeployStateCompletedImpl implements DeployStateCompleted {
  const _$DeployStateCompletedImpl();

  @override
  String toString() {
    return 'DeployState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployStateCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function() building,
    required TResult Function(String outputPath) buildSuccess,
    required TResult Function() checkingVersion,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version, bool isNewRelease)
        releaseSuccess,
    required TResult Function() cleaningFirebase,
    required TResult Function(int deletedCount) cleanupSuccess,
    required TResult Function(String step, String error) failure,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function()? building,
    TResult? Function(String outputPath)? buildSuccess,
    TResult? Function()? checkingVersion,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult? Function()? cleaningFirebase,
    TResult? Function(int deletedCount)? cleanupSuccess,
    TResult? Function(String step, String error)? failure,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function()? building,
    TResult Function(String outputPath)? buildSuccess,
    TResult Function()? checkingVersion,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version, bool isNewRelease)? releaseSuccess,
    TResult Function()? cleaningFirebase,
    TResult Function(int deletedCount)? cleanupSuccess,
    TResult Function(String step, String error)? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeployStateInitial value) initial,
    required TResult Function(DeployStateLoading value) loading,
    required TResult Function(DeployStateBuilding value) building,
    required TResult Function(DeployStateBuildSuccess value) buildSuccess,
    required TResult Function(DeployStateCheckingVersion value) checkingVersion,
    required TResult Function(DeployStateDeployingPatch value) deployingPatch,
    required TResult Function(DeployStatePatchSuccess value) patchSuccess,
    required TResult Function(DeployStateDeployingRelease value)
        deployingRelease,
    required TResult Function(DeployStateReleaseSuccess value) releaseSuccess,
    required TResult Function(DeployStateCleaningFirebase value)
        cleaningFirebase,
    required TResult Function(DeployStateCleanupSuccess value) cleanupSuccess,
    required TResult Function(DeployStateFailure value) failure,
    required TResult Function(DeployStateCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeployStateInitial value)? initial,
    TResult? Function(DeployStateLoading value)? loading,
    TResult? Function(DeployStateBuilding value)? building,
    TResult? Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult? Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult? Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult? Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult? Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult? Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult? Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult? Function(DeployStateFailure value)? failure,
    TResult? Function(DeployStateCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeployStateInitial value)? initial,
    TResult Function(DeployStateLoading value)? loading,
    TResult Function(DeployStateBuilding value)? building,
    TResult Function(DeployStateBuildSuccess value)? buildSuccess,
    TResult Function(DeployStateCheckingVersion value)? checkingVersion,
    TResult Function(DeployStateDeployingPatch value)? deployingPatch,
    TResult Function(DeployStatePatchSuccess value)? patchSuccess,
    TResult Function(DeployStateDeployingRelease value)? deployingRelease,
    TResult Function(DeployStateReleaseSuccess value)? releaseSuccess,
    TResult Function(DeployStateCleaningFirebase value)? cleaningFirebase,
    TResult Function(DeployStateCleanupSuccess value)? cleanupSuccess,
    TResult Function(DeployStateFailure value)? failure,
    TResult Function(DeployStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class DeployStateCompleted implements DeployState {
  const factory DeployStateCompleted() = _$DeployStateCompletedImpl;
}
