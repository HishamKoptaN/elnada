// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deploy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeployEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployEvent()';
  }
}

/// @nodoc
class $DeployEventCopyWith<$Res> {
  $DeployEventCopyWith(DeployEvent _, $Res Function(DeployEvent) __);
}

/// Adds pattern-matching-related methods to [DeployEvent].
extension DeployEventPatterns on DeployEvent {
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
    TResult Function(DeployEventStartDeployment value)? startDeployment,
    TResult Function(DeployEventStartCleanup value)? startCleanup,
    TResult Function(DeployEventStartBuild value)? startBuild,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment() when startDeployment != null:
        return startDeployment(_that);
      case DeployEventStartCleanup() when startCleanup != null:
        return startCleanup(_that);
      case DeployEventStartBuild() when startBuild != null:
        return startBuild(_that);
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
    required TResult Function(DeployEventStartDeployment value) startDeployment,
    required TResult Function(DeployEventStartCleanup value) startCleanup,
    required TResult Function(DeployEventStartBuild value) startBuild,
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment():
        return startDeployment(_that);
      case DeployEventStartCleanup():
        return startCleanup(_that);
      case DeployEventStartBuild():
        return startBuild(_that);
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
    TResult? Function(DeployEventStartDeployment value)? startDeployment,
    TResult? Function(DeployEventStartCleanup value)? startCleanup,
    TResult? Function(DeployEventStartBuild value)? startBuild,
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment() when startDeployment != null:
        return startDeployment(_that);
      case DeployEventStartCleanup() when startCleanup != null:
        return startCleanup(_that);
      case DeployEventStartBuild() when startBuild != null:
        return startBuild(_that);
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
    TResult Function()? startDeployment,
    TResult Function()? startCleanup,
    TResult Function()? startBuild,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment() when startDeployment != null:
        return startDeployment();
      case DeployEventStartCleanup() when startCleanup != null:
        return startCleanup();
      case DeployEventStartBuild() when startBuild != null:
        return startBuild();
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
    required TResult Function() startDeployment,
    required TResult Function() startCleanup,
    required TResult Function() startBuild,
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment():
        return startDeployment();
      case DeployEventStartCleanup():
        return startCleanup();
      case DeployEventStartBuild():
        return startBuild();
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
    TResult? Function()? startDeployment,
    TResult? Function()? startCleanup,
    TResult? Function()? startBuild,
  }) {
    final _that = this;
    switch (_that) {
      case DeployEventStartDeployment() when startDeployment != null:
        return startDeployment();
      case DeployEventStartCleanup() when startCleanup != null:
        return startCleanup();
      case DeployEventStartBuild() when startBuild != null:
        return startBuild();
      case _:
        return null;
    }
  }
}

/// @nodoc

class DeployEventStartDeployment implements DeployEvent {
  const DeployEventStartDeployment();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployEventStartDeployment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployEvent.startDeployment()';
  }
}

/// @nodoc

class DeployEventStartCleanup implements DeployEvent {
  const DeployEventStartCleanup();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployEventStartCleanup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployEvent.startCleanup()';
  }
}

/// @nodoc

class DeployEventStartBuild implements DeployEvent {
  const DeployEventStartBuild();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployEventStartBuild);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployEvent.startBuild()';
  }
}

/// @nodoc
mixin _$DeployState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState()';
  }
}

/// @nodoc
class $DeployStateCopyWith<$Res> {
  $DeployStateCopyWith(DeployState _, $Res Function(DeployState) __);
}

/// Adds pattern-matching-related methods to [DeployState].
extension DeployStatePatterns on DeployState {
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial() when initial != null:
        return initial(_that);
      case DeployStateLoading() when loading != null:
        return loading(_that);
      case DeployStateBuilding() when building != null:
        return building(_that);
      case DeployStateBuildSuccess() when buildSuccess != null:
        return buildSuccess(_that);
      case DeployStateCheckingVersion() when checkingVersion != null:
        return checkingVersion(_that);
      case DeployStateDeployingPatch() when deployingPatch != null:
        return deployingPatch(_that);
      case DeployStatePatchSuccess() when patchSuccess != null:
        return patchSuccess(_that);
      case DeployStateDeployingRelease() when deployingRelease != null:
        return deployingRelease(_that);
      case DeployStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that);
      case DeployStateCleaningFirebase() when cleaningFirebase != null:
        return cleaningFirebase(_that);
      case DeployStateCleanupSuccess() when cleanupSuccess != null:
        return cleanupSuccess(_that);
      case DeployStateFailure() when failure != null:
        return failure(_that);
      case DeployStateCompleted() when completed != null:
        return completed(_that);
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial():
        return initial(_that);
      case DeployStateLoading():
        return loading(_that);
      case DeployStateBuilding():
        return building(_that);
      case DeployStateBuildSuccess():
        return buildSuccess(_that);
      case DeployStateCheckingVersion():
        return checkingVersion(_that);
      case DeployStateDeployingPatch():
        return deployingPatch(_that);
      case DeployStatePatchSuccess():
        return patchSuccess(_that);
      case DeployStateDeployingRelease():
        return deployingRelease(_that);
      case DeployStateReleaseSuccess():
        return releaseSuccess(_that);
      case DeployStateCleaningFirebase():
        return cleaningFirebase(_that);
      case DeployStateCleanupSuccess():
        return cleanupSuccess(_that);
      case DeployStateFailure():
        return failure(_that);
      case DeployStateCompleted():
        return completed(_that);
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial() when initial != null:
        return initial(_that);
      case DeployStateLoading() when loading != null:
        return loading(_that);
      case DeployStateBuilding() when building != null:
        return building(_that);
      case DeployStateBuildSuccess() when buildSuccess != null:
        return buildSuccess(_that);
      case DeployStateCheckingVersion() when checkingVersion != null:
        return checkingVersion(_that);
      case DeployStateDeployingPatch() when deployingPatch != null:
        return deployingPatch(_that);
      case DeployStatePatchSuccess() when patchSuccess != null:
        return patchSuccess(_that);
      case DeployStateDeployingRelease() when deployingRelease != null:
        return deployingRelease(_that);
      case DeployStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that);
      case DeployStateCleaningFirebase() when cleaningFirebase != null:
        return cleaningFirebase(_that);
      case DeployStateCleanupSuccess() when cleanupSuccess != null:
        return cleanupSuccess(_that);
      case DeployStateFailure() when failure != null:
        return failure(_that);
      case DeployStateCompleted() when completed != null:
        return completed(_that);
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial() when initial != null:
        return initial();
      case DeployStateLoading() when loading != null:
        return loading(_that.message);
      case DeployStateBuilding() when building != null:
        return building();
      case DeployStateBuildSuccess() when buildSuccess != null:
        return buildSuccess(_that.outputPath);
      case DeployStateCheckingVersion() when checkingVersion != null:
        return checkingVersion();
      case DeployStateDeployingPatch() when deployingPatch != null:
        return deployingPatch();
      case DeployStatePatchSuccess() when patchSuccess != null:
        return patchSuccess();
      case DeployStateDeployingRelease() when deployingRelease != null:
        return deployingRelease();
      case DeployStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that.version, _that.isNewRelease);
      case DeployStateCleaningFirebase() when cleaningFirebase != null:
        return cleaningFirebase();
      case DeployStateCleanupSuccess() when cleanupSuccess != null:
        return cleanupSuccess(_that.deletedCount);
      case DeployStateFailure() when failure != null:
        return failure(_that.step, _that.error);
      case DeployStateCompleted() when completed != null:
        return completed();
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial():
        return initial();
      case DeployStateLoading():
        return loading(_that.message);
      case DeployStateBuilding():
        return building();
      case DeployStateBuildSuccess():
        return buildSuccess(_that.outputPath);
      case DeployStateCheckingVersion():
        return checkingVersion();
      case DeployStateDeployingPatch():
        return deployingPatch();
      case DeployStatePatchSuccess():
        return patchSuccess();
      case DeployStateDeployingRelease():
        return deployingRelease();
      case DeployStateReleaseSuccess():
        return releaseSuccess(_that.version, _that.isNewRelease);
      case DeployStateCleaningFirebase():
        return cleaningFirebase();
      case DeployStateCleanupSuccess():
        return cleanupSuccess(_that.deletedCount);
      case DeployStateFailure():
        return failure(_that.step, _that.error);
      case DeployStateCompleted():
        return completed();
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
    final _that = this;
    switch (_that) {
      case DeployStateInitial() when initial != null:
        return initial();
      case DeployStateLoading() when loading != null:
        return loading(_that.message);
      case DeployStateBuilding() when building != null:
        return building();
      case DeployStateBuildSuccess() when buildSuccess != null:
        return buildSuccess(_that.outputPath);
      case DeployStateCheckingVersion() when checkingVersion != null:
        return checkingVersion();
      case DeployStateDeployingPatch() when deployingPatch != null:
        return deployingPatch();
      case DeployStatePatchSuccess() when patchSuccess != null:
        return patchSuccess();
      case DeployStateDeployingRelease() when deployingRelease != null:
        return deployingRelease();
      case DeployStateReleaseSuccess() when releaseSuccess != null:
        return releaseSuccess(_that.version, _that.isNewRelease);
      case DeployStateCleaningFirebase() when cleaningFirebase != null:
        return cleaningFirebase();
      case DeployStateCleanupSuccess() when cleanupSuccess != null:
        return cleanupSuccess(_that.deletedCount);
      case DeployStateFailure() when failure != null:
        return failure(_that.step, _that.error);
      case DeployStateCompleted() when completed != null:
        return completed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class DeployStateInitial implements DeployState {
  const DeployStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.initial()';
  }
}

/// @nodoc

class DeployStateLoading implements DeployState {
  const DeployStateLoading({required this.message});

  final String message;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeployStateLoadingCopyWith<DeployStateLoading> get copyWith =>
      _$DeployStateLoadingCopyWithImpl<DeployStateLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateLoading &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'DeployState.loading(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DeployStateLoadingCopyWith<$Res>
    implements $DeployStateCopyWith<$Res> {
  factory $DeployStateLoadingCopyWith(
          DeployStateLoading value, $Res Function(DeployStateLoading) _then) =
      _$DeployStateLoadingCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeployStateLoadingCopyWithImpl<$Res>
    implements $DeployStateLoadingCopyWith<$Res> {
  _$DeployStateLoadingCopyWithImpl(this._self, this._then);

  final DeployStateLoading _self;
  final $Res Function(DeployStateLoading) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DeployStateLoading(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeployStateBuilding implements DeployState {
  const DeployStateBuilding();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployStateBuilding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.building()';
  }
}

/// @nodoc

class DeployStateBuildSuccess implements DeployState {
  const DeployStateBuildSuccess({required this.outputPath});

  final String outputPath;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeployStateBuildSuccessCopyWith<DeployStateBuildSuccess> get copyWith =>
      _$DeployStateBuildSuccessCopyWithImpl<DeployStateBuildSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateBuildSuccess &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outputPath);

  @override
  String toString() {
    return 'DeployState.buildSuccess(outputPath: $outputPath)';
  }
}

/// @nodoc
abstract mixin class $DeployStateBuildSuccessCopyWith<$Res>
    implements $DeployStateCopyWith<$Res> {
  factory $DeployStateBuildSuccessCopyWith(DeployStateBuildSuccess value,
          $Res Function(DeployStateBuildSuccess) _then) =
      _$DeployStateBuildSuccessCopyWithImpl;
  @useResult
  $Res call({String outputPath});
}

/// @nodoc
class _$DeployStateBuildSuccessCopyWithImpl<$Res>
    implements $DeployStateBuildSuccessCopyWith<$Res> {
  _$DeployStateBuildSuccessCopyWithImpl(this._self, this._then);

  final DeployStateBuildSuccess _self;
  final $Res Function(DeployStateBuildSuccess) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? outputPath = null,
  }) {
    return _then(DeployStateBuildSuccess(
      outputPath: null == outputPath
          ? _self.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeployStateCheckingVersion implements DeployState {
  const DeployStateCheckingVersion();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateCheckingVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.checkingVersion()';
  }
}

/// @nodoc

class DeployStateDeployingPatch implements DeployState {
  const DeployStateDeployingPatch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateDeployingPatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.deployingPatch()';
  }
}

/// @nodoc

class DeployStatePatchSuccess implements DeployState {
  const DeployStatePatchSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployStatePatchSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.patchSuccess()';
  }
}

/// @nodoc

class DeployStateDeployingRelease implements DeployState {
  const DeployStateDeployingRelease();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateDeployingRelease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.deployingRelease()';
  }
}

/// @nodoc

class DeployStateReleaseSuccess implements DeployState {
  const DeployStateReleaseSuccess(
      {required this.version, required this.isNewRelease});

  final VersionInfo version;
  final bool isNewRelease;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeployStateReleaseSuccessCopyWith<DeployStateReleaseSuccess> get copyWith =>
      _$DeployStateReleaseSuccessCopyWithImpl<DeployStateReleaseSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateReleaseSuccess &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isNewRelease, isNewRelease) ||
                other.isNewRelease == isNewRelease));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, isNewRelease);

  @override
  String toString() {
    return 'DeployState.releaseSuccess(version: $version, isNewRelease: $isNewRelease)';
  }
}

/// @nodoc
abstract mixin class $DeployStateReleaseSuccessCopyWith<$Res>
    implements $DeployStateCopyWith<$Res> {
  factory $DeployStateReleaseSuccessCopyWith(DeployStateReleaseSuccess value,
          $Res Function(DeployStateReleaseSuccess) _then) =
      _$DeployStateReleaseSuccessCopyWithImpl;
  @useResult
  $Res call({VersionInfo version, bool isNewRelease});

  $VersionInfoCopyWith<$Res> get version;
}

/// @nodoc
class _$DeployStateReleaseSuccessCopyWithImpl<$Res>
    implements $DeployStateReleaseSuccessCopyWith<$Res> {
  _$DeployStateReleaseSuccessCopyWithImpl(this._self, this._then);

  final DeployStateReleaseSuccess _self;
  final $Res Function(DeployStateReleaseSuccess) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? isNewRelease = null,
  }) {
    return _then(DeployStateReleaseSuccess(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as VersionInfo,
      isNewRelease: null == isNewRelease
          ? _self.isNewRelease
          : isNewRelease // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of DeployState
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

class DeployStateCleaningFirebase implements DeployState {
  const DeployStateCleaningFirebase();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateCleaningFirebase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.cleaningFirebase()';
  }
}

/// @nodoc

class DeployStateCleanupSuccess implements DeployState {
  const DeployStateCleanupSuccess({required this.deletedCount});

  final int deletedCount;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeployStateCleanupSuccessCopyWith<DeployStateCleanupSuccess> get copyWith =>
      _$DeployStateCleanupSuccessCopyWithImpl<DeployStateCleanupSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateCleanupSuccess &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedCount);

  @override
  String toString() {
    return 'DeployState.cleanupSuccess(deletedCount: $deletedCount)';
  }
}

/// @nodoc
abstract mixin class $DeployStateCleanupSuccessCopyWith<$Res>
    implements $DeployStateCopyWith<$Res> {
  factory $DeployStateCleanupSuccessCopyWith(DeployStateCleanupSuccess value,
          $Res Function(DeployStateCleanupSuccess) _then) =
      _$DeployStateCleanupSuccessCopyWithImpl;
  @useResult
  $Res call({int deletedCount});
}

/// @nodoc
class _$DeployStateCleanupSuccessCopyWithImpl<$Res>
    implements $DeployStateCleanupSuccessCopyWith<$Res> {
  _$DeployStateCleanupSuccessCopyWithImpl(this._self, this._then);

  final DeployStateCleanupSuccess _self;
  final $Res Function(DeployStateCleanupSuccess) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deletedCount = null,
  }) {
    return _then(DeployStateCleanupSuccess(
      deletedCount: null == deletedCount
          ? _self.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DeployStateFailure implements DeployState {
  const DeployStateFailure({required this.step, required this.error});

  final String step;
  final String error;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeployStateFailureCopyWith<DeployStateFailure> get copyWith =>
      _$DeployStateFailureCopyWithImpl<DeployStateFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeployStateFailure &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step, error);

  @override
  String toString() {
    return 'DeployState.failure(step: $step, error: $error)';
  }
}

/// @nodoc
abstract mixin class $DeployStateFailureCopyWith<$Res>
    implements $DeployStateCopyWith<$Res> {
  factory $DeployStateFailureCopyWith(
          DeployStateFailure value, $Res Function(DeployStateFailure) _then) =
      _$DeployStateFailureCopyWithImpl;
  @useResult
  $Res call({String step, String error});
}

/// @nodoc
class _$DeployStateFailureCopyWithImpl<$Res>
    implements $DeployStateFailureCopyWith<$Res> {
  _$DeployStateFailureCopyWithImpl(this._self, this._then);

  final DeployStateFailure _self;
  final $Res Function(DeployStateFailure) _then;

  /// Create a copy of DeployState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
    Object? error = null,
  }) {
    return _then(DeployStateFailure(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeployStateCompleted implements DeployState {
  const DeployStateCompleted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeployStateCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeployState.completed()';
  }
}

// dart format on
