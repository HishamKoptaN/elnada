// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorebird_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShorebirdEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShorebirdEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdEvent()';
  }
}

/// @nodoc
class $ShorebirdEventCopyWith<$Res> {
  $ShorebirdEventCopyWith(ShorebirdEvent _, $Res Function(ShorebirdEvent) __);
}

/// Adds pattern-matching-related methods to [ShorebirdEvent].
extension ShorebirdEventPatterns on ShorebirdEvent {
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
    TResult Function(ShorebirdEventStarted value)? started,
    TResult Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult Function(ShorebirdEventDeployRelease value)? deployRelease,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted() when started != null:
        return started(_that);
      case ShorebirdEventCheckVersion() when checkVersion != null:
        return checkVersion(_that);
      case ShorebirdEventDeployPatch() when deployPatch != null:
        return deployPatch(_that);
      case ShorebirdEventDeployRelease() when deployRelease != null:
        return deployRelease(_that);
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
    required TResult Function(ShorebirdEventStarted value) started,
    required TResult Function(ShorebirdEventCheckVersion value) checkVersion,
    required TResult Function(ShorebirdEventDeployPatch value) deployPatch,
    required TResult Function(ShorebirdEventDeployRelease value) deployRelease,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted():
        return started(_that);
      case ShorebirdEventCheckVersion():
        return checkVersion(_that);
      case ShorebirdEventDeployPatch():
        return deployPatch(_that);
      case ShorebirdEventDeployRelease():
        return deployRelease(_that);
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
    TResult? Function(ShorebirdEventStarted value)? started,
    TResult? Function(ShorebirdEventCheckVersion value)? checkVersion,
    TResult? Function(ShorebirdEventDeployPatch value)? deployPatch,
    TResult? Function(ShorebirdEventDeployRelease value)? deployRelease,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted() when started != null:
        return started(_that);
      case ShorebirdEventCheckVersion() when checkVersion != null:
        return checkVersion(_that);
      case ShorebirdEventDeployPatch() when deployPatch != null:
        return deployPatch(_that);
      case ShorebirdEventDeployRelease() when deployRelease != null:
        return deployRelease(_that);
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
    TResult Function()? checkVersion,
    TResult Function()? deployPatch,
    TResult Function()? deployRelease,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted() when started != null:
        return started();
      case ShorebirdEventCheckVersion() when checkVersion != null:
        return checkVersion();
      case ShorebirdEventDeployPatch() when deployPatch != null:
        return deployPatch();
      case ShorebirdEventDeployRelease() when deployRelease != null:
        return deployRelease();
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
    required TResult Function() checkVersion,
    required TResult Function() deployPatch,
    required TResult Function() deployRelease,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted():
        return started();
      case ShorebirdEventCheckVersion():
        return checkVersion();
      case ShorebirdEventDeployPatch():
        return deployPatch();
      case ShorebirdEventDeployRelease():
        return deployRelease();
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
    TResult? Function()? checkVersion,
    TResult? Function()? deployPatch,
    TResult? Function()? deployRelease,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdEventStarted() when started != null:
        return started();
      case ShorebirdEventCheckVersion() when checkVersion != null:
        return checkVersion();
      case ShorebirdEventDeployPatch() when deployPatch != null:
        return deployPatch();
      case ShorebirdEventDeployRelease() when deployRelease != null:
        return deployRelease();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ShorebirdEventStarted implements ShorebirdEvent {
  const ShorebirdEventStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShorebirdEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdEvent.started()';
  }
}

/// @nodoc

class ShorebirdEventCheckVersion implements ShorebirdEvent {
  const ShorebirdEventCheckVersion();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdEventCheckVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdEvent.checkVersion()';
  }
}

/// @nodoc

class ShorebirdEventDeployPatch implements ShorebirdEvent {
  const ShorebirdEventDeployPatch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdEventDeployPatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdEvent.deployPatch()';
  }
}

/// @nodoc

class ShorebirdEventDeployRelease implements ShorebirdEvent {
  const ShorebirdEventDeployRelease();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdEventDeployRelease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdEvent.deployRelease()';
  }
}

/// @nodoc
mixin _$ShorebirdState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShorebirdState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState()';
  }
}

/// @nodoc
class $ShorebirdStateCopyWith<$Res> {
  $ShorebirdStateCopyWith(ShorebirdState _, $Res Function(ShorebirdState) __);
}

/// Adds pattern-matching-related methods to [ShorebirdState].
extension ShorebirdStatePatterns on ShorebirdState {
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
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial() when initial != null:
        return initial(_that);
      case ShorebirdStateCheckingVersion() when checkingVersion != null:
        return checkingVersion(_that);
      case ShorebirdStatePatchReady() when patchReady != null:
        return patchReady(_that);
      case ShorebirdStateReleaseReady() when releaseReady != null:
        return releaseReady(_that);
      case ShorebirdStateDeployingPatch() when deployingPatch != null:
        return deployingPatch(_that);
      case ShorebirdStatePatchSuccess() when patchSuccess != null:
        return patchSuccess(_that);
      case ShorebirdStateDeployingRelease() when deployingRelease != null:
        return deployingRelease(_that);
      case ShorebirdStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that);
      case ShorebirdStateFailure() when failure != null:
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
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial():
        return initial(_that);
      case ShorebirdStateCheckingVersion():
        return checkingVersion(_that);
      case ShorebirdStatePatchReady():
        return patchReady(_that);
      case ShorebirdStateReleaseReady():
        return releaseReady(_that);
      case ShorebirdStateDeployingPatch():
        return deployingPatch(_that);
      case ShorebirdStatePatchSuccess():
        return patchSuccess(_that);
      case ShorebirdStateDeployingRelease():
        return deployingRelease(_that);
      case ShorebirdStateReleaseSuccess():
        return releaseSuccess(_that);
      case ShorebirdStateFailure():
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
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial() when initial != null:
        return initial(_that);
      case ShorebirdStateCheckingVersion() when checkingVersion != null:
        return checkingVersion(_that);
      case ShorebirdStatePatchReady() when patchReady != null:
        return patchReady(_that);
      case ShorebirdStateReleaseReady() when releaseReady != null:
        return releaseReady(_that);
      case ShorebirdStateDeployingPatch() when deployingPatch != null:
        return deployingPatch(_that);
      case ShorebirdStatePatchSuccess() when patchSuccess != null:
        return patchSuccess(_that);
      case ShorebirdStateDeployingRelease() when deployingRelease != null:
        return deployingRelease(_that);
      case ShorebirdStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that);
      case ShorebirdStateFailure() when failure != null:
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
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial() when initial != null:
        return initial();
      case ShorebirdStateCheckingVersion() when checkingVersion != null:
        return checkingVersion();
      case ShorebirdStatePatchReady() when patchReady != null:
        return patchReady();
      case ShorebirdStateReleaseReady() when releaseReady != null:
        return releaseReady();
      case ShorebirdStateDeployingPatch() when deployingPatch != null:
        return deployingPatch();
      case ShorebirdStatePatchSuccess() when patchSuccess != null:
        return patchSuccess();
      case ShorebirdStateDeployingRelease() when deployingRelease != null:
        return deployingRelease();
      case ShorebirdStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that.version);
      case ShorebirdStateFailure() when failure != null:
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
    required TResult Function() checkingVersion,
    required TResult Function() patchReady,
    required TResult Function() releaseReady,
    required TResult Function() deployingPatch,
    required TResult Function() patchSuccess,
    required TResult Function() deployingRelease,
    required TResult Function(VersionInfo version) releaseSuccess,
    required TResult Function(String error) failure,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial():
        return initial();
      case ShorebirdStateCheckingVersion():
        return checkingVersion();
      case ShorebirdStatePatchReady():
        return patchReady();
      case ShorebirdStateReleaseReady():
        return releaseReady();
      case ShorebirdStateDeployingPatch():
        return deployingPatch();
      case ShorebirdStatePatchSuccess():
        return patchSuccess();
      case ShorebirdStateDeployingRelease():
        return deployingRelease();
      case ShorebirdStateReleaseSuccess():
        return releaseSuccess(_that.version);
      case ShorebirdStateFailure():
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
    TResult? Function()? checkingVersion,
    TResult? Function()? patchReady,
    TResult? Function()? releaseReady,
    TResult? Function()? deployingPatch,
    TResult? Function()? patchSuccess,
    TResult? Function()? deployingRelease,
    TResult? Function(VersionInfo version)? releaseSuccess,
    TResult? Function(String error)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case ShorebirdStateInitial() when initial != null:
        return initial();
      case ShorebirdStateCheckingVersion() when checkingVersion != null:
        return checkingVersion();
      case ShorebirdStatePatchReady() when patchReady != null:
        return patchReady();
      case ShorebirdStateReleaseReady() when releaseReady != null:
        return releaseReady();
      case ShorebirdStateDeployingPatch() when deployingPatch != null:
        return deployingPatch();
      case ShorebirdStatePatchSuccess() when patchSuccess != null:
        return patchSuccess();
      case ShorebirdStateDeployingRelease() when deployingRelease != null:
        return deployingRelease();
      case ShorebirdStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that.version);
      case ShorebirdStateFailure() when failure != null:
        return failure(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ShorebirdStateInitial implements ShorebirdState {
  const ShorebirdStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShorebirdStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.initial()';
  }
}

/// @nodoc

class ShorebirdStateCheckingVersion implements ShorebirdState {
  const ShorebirdStateCheckingVersion();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateCheckingVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.checkingVersion()';
  }
}

/// @nodoc

class ShorebirdStatePatchReady implements ShorebirdState {
  const ShorebirdStatePatchReady();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShorebirdStatePatchReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.patchReady()';
  }
}

/// @nodoc

class ShorebirdStateReleaseReady implements ShorebirdState {
  const ShorebirdStateReleaseReady();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateReleaseReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.releaseReady()';
  }
}

/// @nodoc

class ShorebirdStateDeployingPatch implements ShorebirdState {
  const ShorebirdStateDeployingPatch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateDeployingPatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.deployingPatch()';
  }
}

/// @nodoc

class ShorebirdStatePatchSuccess implements ShorebirdState {
  const ShorebirdStatePatchSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStatePatchSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.patchSuccess()';
  }
}

/// @nodoc

class ShorebirdStateDeployingRelease implements ShorebirdState {
  const ShorebirdStateDeployingRelease();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateDeployingRelease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ShorebirdState.deployingRelease()';
  }
}

/// @nodoc

class ShorebirdStateReleaseSuccess implements ShorebirdState {
  const ShorebirdStateReleaseSuccess({required this.version});

  final VersionInfo version;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShorebirdStateReleaseSuccessCopyWith<ShorebirdStateReleaseSuccess>
      get copyWith => _$ShorebirdStateReleaseSuccessCopyWithImpl<
          ShorebirdStateReleaseSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateReleaseSuccess &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  @override
  String toString() {
    return 'ShorebirdState.releaseSuccess(version: $version)';
  }
}

/// @nodoc
abstract mixin class $ShorebirdStateReleaseSuccessCopyWith<$Res>
    implements $ShorebirdStateCopyWith<$Res> {
  factory $ShorebirdStateReleaseSuccessCopyWith(
          ShorebirdStateReleaseSuccess value,
          $Res Function(ShorebirdStateReleaseSuccess) _then) =
      _$ShorebirdStateReleaseSuccessCopyWithImpl;
  @useResult
  $Res call({VersionInfo version});

  $VersionInfoCopyWith<$Res> get version;
}

/// @nodoc
class _$ShorebirdStateReleaseSuccessCopyWithImpl<$Res>
    implements $ShorebirdStateReleaseSuccessCopyWith<$Res> {
  _$ShorebirdStateReleaseSuccessCopyWithImpl(this._self, this._then);

  final ShorebirdStateReleaseSuccess _self;
  final $Res Function(ShorebirdStateReleaseSuccess) _then;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
  }) {
    return _then(ShorebirdStateReleaseSuccess(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionInfo,
    ));
  }

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionInfoCopyWith<$Res> get version {
    return $VersionInfoCopyWith<$Res>(_self.version, (value) {
      return _then(_self.copyWith(version: value));
    });
  }
}

/// @nodoc

class ShorebirdStateFailure implements ShorebirdState {
  const ShorebirdStateFailure({required this.error});

  final String error;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShorebirdStateFailureCopyWith<ShorebirdStateFailure> get copyWith =>
      _$ShorebirdStateFailureCopyWithImpl<ShorebirdStateFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShorebirdStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ShorebirdState.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ShorebirdStateFailureCopyWith<$Res>
    implements $ShorebirdStateCopyWith<$Res> {
  factory $ShorebirdStateFailureCopyWith(ShorebirdStateFailure value,
          $Res Function(ShorebirdStateFailure) _then) =
      _$ShorebirdStateFailureCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ShorebirdStateFailureCopyWithImpl<$Res>
    implements $ShorebirdStateFailureCopyWith<$Res> {
  _$ShorebirdStateFailureCopyWithImpl(this._self, this._then);

  final ShorebirdStateFailure _self;
  final $Res Function(ShorebirdStateFailure) _then;

  /// Create a copy of ShorebirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ShorebirdStateFailure(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
