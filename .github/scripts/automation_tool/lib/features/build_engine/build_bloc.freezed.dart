// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BuildEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BuildEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BuildEvent()';
  }
}

/// @nodoc
class $BuildEventCopyWith<$Res> {
  $BuildEventCopyWith(BuildEvent _, $Res Function(BuildEvent) __);
}

/// Adds pattern-matching-related methods to [BuildEvent].
extension BuildEventPatterns on BuildEvent {
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
    TResult Function(BuildEventStarted value)? started,
    TResult Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult Function(BuildEventBuildWindows value)? buildWindows,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted() when started != null:
        return started(_that);
      case BuildEventBuildAndroid() when buildAndroid != null:
        return buildAndroid(_that);
      case BuildEventBuildWindows() when buildWindows != null:
        return buildWindows(_that);
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
    required TResult Function(BuildEventStarted value) started,
    required TResult Function(BuildEventBuildAndroid value) buildAndroid,
    required TResult Function(BuildEventBuildWindows value) buildWindows,
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted():
        return started(_that);
      case BuildEventBuildAndroid():
        return buildAndroid(_that);
      case BuildEventBuildWindows():
        return buildWindows(_that);
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
    TResult? Function(BuildEventStarted value)? started,
    TResult? Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult? Function(BuildEventBuildWindows value)? buildWindows,
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted() when started != null:
        return started(_that);
      case BuildEventBuildAndroid() when buildAndroid != null:
        return buildAndroid(_that);
      case BuildEventBuildWindows() when buildWindows != null:
        return buildWindows(_that);
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
    TResult Function(String? flavor)? buildAndroid,
    TResult Function()? buildWindows,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted() when started != null:
        return started();
      case BuildEventBuildAndroid() when buildAndroid != null:
        return buildAndroid(_that.flavor);
      case BuildEventBuildWindows() when buildWindows != null:
        return buildWindows();
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
    required TResult Function(String? flavor) buildAndroid,
    required TResult Function() buildWindows,
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted():
        return started();
      case BuildEventBuildAndroid():
        return buildAndroid(_that.flavor);
      case BuildEventBuildWindows():
        return buildWindows();
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
    TResult? Function(String? flavor)? buildAndroid,
    TResult? Function()? buildWindows,
  }) {
    final _that = this;
    switch (_that) {
      case BuildEventStarted() when started != null:
        return started();
      case BuildEventBuildAndroid() when buildAndroid != null:
        return buildAndroid(_that.flavor);
      case BuildEventBuildWindows() when buildWindows != null:
        return buildWindows();
      case _:
        return null;
    }
  }
}

/// @nodoc

class BuildEventStarted implements BuildEvent {
  const BuildEventStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BuildEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BuildEvent.started()';
  }
}

/// @nodoc

class BuildEventBuildAndroid implements BuildEvent {
  const BuildEventBuildAndroid({this.flavor});

  final String? flavor;

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuildEventBuildAndroidCopyWith<BuildEventBuildAndroid> get copyWith =>
      _$BuildEventBuildAndroidCopyWithImpl<BuildEventBuildAndroid>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuildEventBuildAndroid &&
            (identical(other.flavor, flavor) || other.flavor == flavor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flavor);

  @override
  String toString() {
    return 'BuildEvent.buildAndroid(flavor: $flavor)';
  }
}

/// @nodoc
abstract mixin class $BuildEventBuildAndroidCopyWith<$Res>
    implements $BuildEventCopyWith<$Res> {
  factory $BuildEventBuildAndroidCopyWith(BuildEventBuildAndroid value,
          $Res Function(BuildEventBuildAndroid) _then) =
      _$BuildEventBuildAndroidCopyWithImpl;
  @useResult
  $Res call({String? flavor});
}

/// @nodoc
class _$BuildEventBuildAndroidCopyWithImpl<$Res>
    implements $BuildEventBuildAndroidCopyWith<$Res> {
  _$BuildEventBuildAndroidCopyWithImpl(this._self, this._then);

  final BuildEventBuildAndroid _self;
  final $Res Function(BuildEventBuildAndroid) _then;

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flavor = freezed,
  }) {
    return _then(BuildEventBuildAndroid(
      flavor: freezed == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class BuildEventBuildWindows implements BuildEvent {
  const BuildEventBuildWindows();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BuildEventBuildWindows);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BuildEvent.buildWindows()';
  }
}

/// @nodoc
mixin _$BuildState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BuildState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BuildState()';
  }
}

/// @nodoc
class $BuildStateCopyWith<$Res> {
  $BuildStateCopyWith(BuildState _, $Res Function(BuildState) __);
}

/// Adds pattern-matching-related methods to [BuildState].
extension BuildStatePatterns on BuildState {
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
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial() when initial != null:
        return initial(_that);
      case BuildStateBuilding() when building != null:
        return building(_that);
      case BuildStateSuccess() when success != null:
        return success(_that);
      case BuildStateFailure() when failure != null:
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
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial():
        return initial(_that);
      case BuildStateBuilding():
        return building(_that);
      case BuildStateSuccess():
        return success(_that);
      case BuildStateFailure():
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
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial() when initial != null:
        return initial(_that);
      case BuildStateBuilding() when building != null:
        return building(_that);
      case BuildStateSuccess() when success != null:
        return success(_that);
      case BuildStateFailure() when failure != null:
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
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial() when initial != null:
        return initial();
      case BuildStateBuilding() when building != null:
        return building(_that.platform);
      case BuildStateSuccess() when success != null:
        return success(_that.platform, _that.outputPath);
      case BuildStateFailure() when failure != null:
        return failure(_that.platform, _that.error);
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
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial():
        return initial();
      case BuildStateBuilding():
        return building(_that.platform);
      case BuildStateSuccess():
        return success(_that.platform, _that.outputPath);
      case BuildStateFailure():
        return failure(_that.platform, _that.error);
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
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case BuildStateInitial() when initial != null:
        return initial();
      case BuildStateBuilding() when building != null:
        return building(_that.platform);
      case BuildStateSuccess() when success != null:
        return success(_that.platform, _that.outputPath);
      case BuildStateFailure() when failure != null:
        return failure(_that.platform, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BuildStateInitial implements BuildState {
  const BuildStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BuildStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BuildState.initial()';
  }
}

/// @nodoc

class BuildStateBuilding implements BuildState {
  const BuildStateBuilding({required this.platform});

  final String platform;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuildStateBuildingCopyWith<BuildStateBuilding> get copyWith =>
      _$BuildStateBuildingCopyWithImpl<BuildStateBuilding>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuildStateBuilding &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform);

  @override
  String toString() {
    return 'BuildState.building(platform: $platform)';
  }
}

/// @nodoc
abstract mixin class $BuildStateBuildingCopyWith<$Res>
    implements $BuildStateCopyWith<$Res> {
  factory $BuildStateBuildingCopyWith(
          BuildStateBuilding value, $Res Function(BuildStateBuilding) _then) =
      _$BuildStateBuildingCopyWithImpl;
  @useResult
  $Res call({String platform});
}

/// @nodoc
class _$BuildStateBuildingCopyWithImpl<$Res>
    implements $BuildStateBuildingCopyWith<$Res> {
  _$BuildStateBuildingCopyWithImpl(this._self, this._then);

  final BuildStateBuilding _self;
  final $Res Function(BuildStateBuilding) _then;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? platform = null,
  }) {
    return _then(BuildStateBuilding(
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BuildStateSuccess implements BuildState {
  const BuildStateSuccess({required this.platform, required this.outputPath});

  final String platform;
  final String outputPath;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuildStateSuccessCopyWith<BuildStateSuccess> get copyWith =>
      _$BuildStateSuccessCopyWithImpl<BuildStateSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuildStateSuccess &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, outputPath);

  @override
  String toString() {
    return 'BuildState.success(platform: $platform, outputPath: $outputPath)';
  }
}

/// @nodoc
abstract mixin class $BuildStateSuccessCopyWith<$Res>
    implements $BuildStateCopyWith<$Res> {
  factory $BuildStateSuccessCopyWith(
          BuildStateSuccess value, $Res Function(BuildStateSuccess) _then) =
      _$BuildStateSuccessCopyWithImpl;
  @useResult
  $Res call({String platform, String outputPath});
}

/// @nodoc
class _$BuildStateSuccessCopyWithImpl<$Res>
    implements $BuildStateSuccessCopyWith<$Res> {
  _$BuildStateSuccessCopyWithImpl(this._self, this._then);

  final BuildStateSuccess _self;
  final $Res Function(BuildStateSuccess) _then;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? platform = null,
    Object? outputPath = null,
  }) {
    return _then(BuildStateSuccess(
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      outputPath: null == outputPath
          ? _self.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BuildStateFailure implements BuildState {
  const BuildStateFailure({required this.platform, required this.error});

  final String platform;
  final String error;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuildStateFailureCopyWith<BuildStateFailure> get copyWith =>
      _$BuildStateFailureCopyWithImpl<BuildStateFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuildStateFailure &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, error);

  @override
  String toString() {
    return 'BuildState.failure(platform: $platform, error: $error)';
  }
}

/// @nodoc
abstract mixin class $BuildStateFailureCopyWith<$Res>
    implements $BuildStateCopyWith<$Res> {
  factory $BuildStateFailureCopyWith(
          BuildStateFailure value, $Res Function(BuildStateFailure) _then) =
      _$BuildStateFailureCopyWithImpl;
  @useResult
  $Res call({String platform, String error});
}

/// @nodoc
class _$BuildStateFailureCopyWithImpl<$Res>
    implements $BuildStateFailureCopyWith<$Res> {
  _$BuildStateFailureCopyWithImpl(this._self, this._then);

  final BuildStateFailure _self;
  final $Res Function(BuildStateFailure) _then;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? platform = null,
    Object? error = null,
  }) {
    return _then(BuildStateFailure(
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
