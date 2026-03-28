// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorebird_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShorebirdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShorebirdStateCopyWith<$Res> {
  factory $ShorebirdStateCopyWith(
          ShorebirdState value, $Res Function(ShorebirdState) then) =
      _$ShorebirdStateCopyWithImpl<$Res, ShorebirdState>;
}

/// @nodoc
class _$ShorebirdStateCopyWithImpl<$Res, $Val extends ShorebirdState>
    implements $ShorebirdStateCopyWith<$Res> {
  _$ShorebirdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShorebirdStateInitialImplCopyWith<$Res> {
  factory _$$ShorebirdStateInitialImplCopyWith(
          _$ShorebirdStateInitialImpl value,
          $Res Function(_$ShorebirdStateInitialImpl) then) =
      __$$ShorebirdStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStateInitialImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res, _$ShorebirdStateInitialImpl>
    implements _$$ShorebirdStateInitialImplCopyWith<$Res> {
  __$$ShorebirdStateInitialImplCopyWithImpl(_$ShorebirdStateInitialImpl _value,
      $Res Function(_$ShorebirdStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStateInitialImpl implements ShorebirdStateInitial {
  const _$ShorebirdStateInitialImpl();

  @override
  String toString() {
    return 'ShorebirdState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateInitial implements ShorebirdState {
  const factory ShorebirdStateInitial() = _$ShorebirdStateInitialImpl;
}

/// @nodoc
abstract class _$$ShorebirdStateCheckingVersionImplCopyWith<$Res> {
  factory _$$ShorebirdStateCheckingVersionImplCopyWith(
          _$ShorebirdStateCheckingVersionImpl value,
          $Res Function(_$ShorebirdStateCheckingVersionImpl) then) =
      __$$ShorebirdStateCheckingVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStateCheckingVersionImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res,
        _$ShorebirdStateCheckingVersionImpl>
    implements _$$ShorebirdStateCheckingVersionImplCopyWith<$Res> {
  __$$ShorebirdStateCheckingVersionImplCopyWithImpl(
      _$ShorebirdStateCheckingVersionImpl _value,
      $Res Function(_$ShorebirdStateCheckingVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStateCheckingVersionImpl
    implements ShorebirdStateCheckingVersion {
  const _$ShorebirdStateCheckingVersionImpl();

  @override
  String toString() {
    return 'ShorebirdState.checkingVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateCheckingVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return checkingVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return checkingVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return checkingVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return checkingVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (checkingVersion != null) {
      return checkingVersion(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateCheckingVersion implements ShorebirdState {
  const factory ShorebirdStateCheckingVersion() =
      _$ShorebirdStateCheckingVersionImpl;
}

/// @nodoc
abstract class _$$ShorebirdStatePatchReadyImplCopyWith<$Res> {
  factory _$$ShorebirdStatePatchReadyImplCopyWith(
          _$ShorebirdStatePatchReadyImpl value,
          $Res Function(_$ShorebirdStatePatchReadyImpl) then) =
      __$$ShorebirdStatePatchReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStatePatchReadyImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res, _$ShorebirdStatePatchReadyImpl>
    implements _$$ShorebirdStatePatchReadyImplCopyWith<$Res> {
  __$$ShorebirdStatePatchReadyImplCopyWithImpl(
      _$ShorebirdStatePatchReadyImpl _value,
      $Res Function(_$ShorebirdStatePatchReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStatePatchReadyImpl implements ShorebirdStatePatchReady {
  const _$ShorebirdStatePatchReadyImpl();

  @override
  String toString() {
    return 'ShorebirdState.patchReady()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStatePatchReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return patchReady();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return patchReady?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (patchReady != null) {
      return patchReady();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return patchReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return patchReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (patchReady != null) {
      return patchReady(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStatePatchReady implements ShorebirdState {
  const factory ShorebirdStatePatchReady() = _$ShorebirdStatePatchReadyImpl;
}

/// @nodoc
abstract class _$$ShorebirdStateReleaseReadyImplCopyWith<$Res> {
  factory _$$ShorebirdStateReleaseReadyImplCopyWith(
          _$ShorebirdStateReleaseReadyImpl value,
          $Res Function(_$ShorebirdStateReleaseReadyImpl) then) =
      __$$ShorebirdStateReleaseReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStateReleaseReadyImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res, _$ShorebirdStateReleaseReadyImpl>
    implements _$$ShorebirdStateReleaseReadyImplCopyWith<$Res> {
  __$$ShorebirdStateReleaseReadyImplCopyWithImpl(
      _$ShorebirdStateReleaseReadyImpl _value,
      $Res Function(_$ShorebirdStateReleaseReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStateReleaseReadyImpl implements ShorebirdStateReleaseReady {
  const _$ShorebirdStateReleaseReadyImpl();

  @override
  String toString() {
    return 'ShorebirdState.releaseReady()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateReleaseReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return releaseReady();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return releaseReady?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (releaseReady != null) {
      return releaseReady();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return releaseReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return releaseReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (releaseReady != null) {
      return releaseReady(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateReleaseReady implements ShorebirdState {
  const factory ShorebirdStateReleaseReady() = _$ShorebirdStateReleaseReadyImpl;
}

/// @nodoc
abstract class _$$ShorebirdStateDeployingPatchImplCopyWith<$Res> {
  factory _$$ShorebirdStateDeployingPatchImplCopyWith(
          _$ShorebirdStateDeployingPatchImpl value,
          $Res Function(_$ShorebirdStateDeployingPatchImpl) then) =
      __$$ShorebirdStateDeployingPatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStateDeployingPatchImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res,
        _$ShorebirdStateDeployingPatchImpl>
    implements _$$ShorebirdStateDeployingPatchImplCopyWith<$Res> {
  __$$ShorebirdStateDeployingPatchImplCopyWithImpl(
      _$ShorebirdStateDeployingPatchImpl _value,
      $Res Function(_$ShorebirdStateDeployingPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStateDeployingPatchImpl
    implements ShorebirdStateDeployingPatch {
  const _$ShorebirdStateDeployingPatchImpl();

  @override
  String toString() {
    return 'ShorebirdState.deployingPatch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateDeployingPatchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return deployingPatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return deployingPatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return deployingPatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return deployingPatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (deployingPatch != null) {
      return deployingPatch(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateDeployingPatch implements ShorebirdState {
  const factory ShorebirdStateDeployingPatch() =
      _$ShorebirdStateDeployingPatchImpl;
}

/// @nodoc
abstract class _$$ShorebirdStatePatchSuccessImplCopyWith<$Res> {
  factory _$$ShorebirdStatePatchSuccessImplCopyWith(
          _$ShorebirdStatePatchSuccessImpl value,
          $Res Function(_$ShorebirdStatePatchSuccessImpl) then) =
      __$$ShorebirdStatePatchSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStatePatchSuccessImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res, _$ShorebirdStatePatchSuccessImpl>
    implements _$$ShorebirdStatePatchSuccessImplCopyWith<$Res> {
  __$$ShorebirdStatePatchSuccessImplCopyWithImpl(
      _$ShorebirdStatePatchSuccessImpl _value,
      $Res Function(_$ShorebirdStatePatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStatePatchSuccessImpl implements ShorebirdStatePatchSuccess {
  const _$ShorebirdStatePatchSuccessImpl();

  @override
  String toString() {
    return 'ShorebirdState.patchSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStatePatchSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return patchSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return patchSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return patchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return patchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (patchSuccess != null) {
      return patchSuccess(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStatePatchSuccess implements ShorebirdState {
  const factory ShorebirdStatePatchSuccess() = _$ShorebirdStatePatchSuccessImpl;
}

/// @nodoc
abstract class _$$ShorebirdStateDeployingReleaseImplCopyWith<$Res> {
  factory _$$ShorebirdStateDeployingReleaseImplCopyWith(
          _$ShorebirdStateDeployingReleaseImpl value,
          $Res Function(_$ShorebirdStateDeployingReleaseImpl) then) =
      __$$ShorebirdStateDeployingReleaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShorebirdStateDeployingReleaseImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res,
        _$ShorebirdStateDeployingReleaseImpl>
    implements _$$ShorebirdStateDeployingReleaseImplCopyWith<$Res> {
  __$$ShorebirdStateDeployingReleaseImplCopyWithImpl(
      _$ShorebirdStateDeployingReleaseImpl _value,
      $Res Function(_$ShorebirdStateDeployingReleaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShorebirdStateDeployingReleaseImpl
    implements ShorebirdStateDeployingRelease {
  const _$ShorebirdStateDeployingReleaseImpl();

  @override
  String toString() {
    return 'ShorebirdState.deployingRelease()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateDeployingReleaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return deployingRelease();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return deployingRelease?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return deployingRelease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return deployingRelease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (deployingRelease != null) {
      return deployingRelease(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateDeployingRelease implements ShorebirdState {
  const factory ShorebirdStateDeployingRelease() =
      _$ShorebirdStateDeployingReleaseImpl;
}

/// @nodoc
abstract class _$$ShorebirdStateReleaseSuccessImplCopyWith<$Res> {
  factory _$$ShorebirdStateReleaseSuccessImplCopyWith(
          _$ShorebirdStateReleaseSuccessImpl value,
          $Res Function(_$ShorebirdStateReleaseSuccessImpl) then) =
      __$$ShorebirdStateReleaseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VersionInfo version});

  $VersionInfoCopyWith<$Res> get version;
}

/// @nodoc
class __$$ShorebirdStateReleaseSuccessImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res,
        _$ShorebirdStateReleaseSuccessImpl>
    implements _$$ShorebirdStateReleaseSuccessImplCopyWith<$Res> {
  __$$ShorebirdStateReleaseSuccessImplCopyWithImpl(
      _$ShorebirdStateReleaseSuccessImpl _value,
      $Res Function(_$ShorebirdStateReleaseSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$ShorebirdStateReleaseSuccessImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionInfo,
    ));
  }

  /// Create a copy of ShorebirdState
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

class _$ShorebirdStateReleaseSuccessImpl
    implements ShorebirdStateReleaseSuccess {
  const _$ShorebirdStateReleaseSuccessImpl({required this.version});

  @override
  final VersionInfo version;

  @override
  String toString() {
    return 'ShorebirdState.releaseSuccess(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateReleaseSuccessImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShorebirdStateReleaseSuccessImplCopyWith<
          _$ShorebirdStateReleaseSuccessImpl>
      get copyWith => __$$ShorebirdStateReleaseSuccessImplCopyWithImpl<
          _$ShorebirdStateReleaseSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return releaseSuccess(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return releaseSuccess?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return releaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return releaseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateReleaseSuccess implements ShorebirdState {
  const factory ShorebirdStateReleaseSuccess(
          {required final VersionInfo version}) =
      _$ShorebirdStateReleaseSuccessImpl;

  VersionInfo get version;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShorebirdStateReleaseSuccessImplCopyWith<
          _$ShorebirdStateReleaseSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShorebirdStateFailureImplCopyWith<$Res> {
  factory _$$ShorebirdStateFailureImplCopyWith(
          _$ShorebirdStateFailureImpl value,
          $Res Function(_$ShorebirdStateFailureImpl) then) =
      __$$ShorebirdStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ShorebirdStateFailureImplCopyWithImpl<$Res>
    extends _$ShorebirdStateCopyWithImpl<$Res, _$ShorebirdStateFailureImpl>
    implements _$$ShorebirdStateFailureImplCopyWith<$Res> {
  __$$ShorebirdStateFailureImplCopyWithImpl(_$ShorebirdStateFailureImpl _value,
      $Res Function(_$ShorebirdStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ShorebirdStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShorebirdStateFailureImpl implements ShorebirdStateFailure {
  const _$ShorebirdStateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ShorebirdState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShorebirdStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShorebirdStateFailureImplCopyWith<_$ShorebirdStateFailureImpl>
      get copyWith => __$$ShorebirdStateFailureImplCopyWithImpl<
          _$ShorebirdStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? patchReady,
    TResult Function()? releaseReady,
    TResult Function()? deployingPatch,
    TResult Function()? patchSuccess,
    TResult Function()? deployingRelease,
    TResult Function(VersionInfo version)? releaseSuccess,
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
    required TResult Function(ShorebirdStateInitial value) initial,
    required TResult Function(ShorebirdStateCheckingVersion value)
        checkingVersion,
    required TResult Function(ShorebirdStatePatchReady value) patchReady,
    required TResult Function(ShorebirdStateReleaseReady value) releaseReady,
    required TResult Function(ShorebirdStateDeployingPatch value)
        deployingPatch,
    required TResult Function(ShorebirdStatePatchSuccess value) patchSuccess,
    required TResult Function(ShorebirdStateDeployingRelease value)
        deployingRelease,
    required TResult Function(ShorebirdStateReleaseSuccess value)
        releaseSuccess,
    required TResult Function(ShorebirdStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShorebirdStateInitial value)? initial,
    TResult? Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult? Function(ShorebirdStatePatchReady value)? patchReady,
    TResult? Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult? Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult? Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult? Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult? Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult? Function(ShorebirdStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShorebirdStateInitial value)? initial,
    TResult Function(ShorebirdStateCheckingVersion value)? checkingVersion,
    TResult Function(ShorebirdStatePatchReady value)? patchReady,
    TResult Function(ShorebirdStateReleaseReady value)? releaseReady,
    TResult Function(ShorebirdStateDeployingPatch value)? deployingPatch,
    TResult Function(ShorebirdStatePatchSuccess value)? patchSuccess,
    TResult Function(ShorebirdStateDeployingRelease value)? deployingRelease,
    TResult Function(ShorebirdStateReleaseSuccess value)? releaseSuccess,
    TResult Function(ShorebirdStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ShorebirdStateFailure implements ShorebirdState {
  const factory ShorebirdStateFailure({required final String error}) =
      _$ShorebirdStateFailureImpl;

  String get error;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShorebirdStateFailureImplCopyWith<_$ShorebirdStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
