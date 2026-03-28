// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuildEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? flavor) buildAndroid,
    required TResult Function() buildWindows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? flavor)? buildAndroid,
    TResult? Function()? buildWindows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? flavor)? buildAndroid,
    TResult Function()? buildWindows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildEventStarted value) started,
    required TResult Function(BuildEventBuildAndroid value) buildAndroid,
    required TResult Function(BuildEventBuildWindows value) buildWindows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildEventStarted value)? started,
    TResult? Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult? Function(BuildEventBuildWindows value)? buildWindows,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildEventStarted value)? started,
    TResult Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult Function(BuildEventBuildWindows value)? buildWindows,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildEventCopyWith<$Res> {
  factory $BuildEventCopyWith(
          BuildEvent value, $Res Function(BuildEvent) then) =
      _$BuildEventCopyWithImpl<$Res, BuildEvent>;
}

/// @nodoc
class _$BuildEventCopyWithImpl<$Res, $Val extends BuildEvent>
    implements $BuildEventCopyWith<$Res> {
  _$BuildEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BuildEventStartedImplCopyWith<$Res> {
  factory _$$BuildEventStartedImplCopyWith(_$BuildEventStartedImpl value,
          $Res Function(_$BuildEventStartedImpl) then) =
      __$$BuildEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuildEventStartedImplCopyWithImpl<$Res>
    extends _$BuildEventCopyWithImpl<$Res, _$BuildEventStartedImpl>
    implements _$$BuildEventStartedImplCopyWith<$Res> {
  __$$BuildEventStartedImplCopyWithImpl(_$BuildEventStartedImpl _value,
      $Res Function(_$BuildEventStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BuildEventStartedImpl implements BuildEventStarted {
  const _$BuildEventStartedImpl();

  @override
  String toString() {
    return 'BuildEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BuildEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? flavor) buildAndroid,
    required TResult Function() buildWindows,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? flavor)? buildAndroid,
    TResult? Function()? buildWindows,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? flavor)? buildAndroid,
    TResult Function()? buildWindows,
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
    required TResult Function(BuildEventStarted value) started,
    required TResult Function(BuildEventBuildAndroid value) buildAndroid,
    required TResult Function(BuildEventBuildWindows value) buildWindows,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildEventStarted value)? started,
    TResult? Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult? Function(BuildEventBuildWindows value)? buildWindows,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildEventStarted value)? started,
    TResult Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult Function(BuildEventBuildWindows value)? buildWindows,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class BuildEventStarted implements BuildEvent {
  const factory BuildEventStarted() = _$BuildEventStartedImpl;
}

/// @nodoc
abstract class _$$BuildEventBuildAndroidImplCopyWith<$Res> {
  factory _$$BuildEventBuildAndroidImplCopyWith(
          _$BuildEventBuildAndroidImpl value,
          $Res Function(_$BuildEventBuildAndroidImpl) then) =
      __$$BuildEventBuildAndroidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? flavor});
}

/// @nodoc
class __$$BuildEventBuildAndroidImplCopyWithImpl<$Res>
    extends _$BuildEventCopyWithImpl<$Res, _$BuildEventBuildAndroidImpl>
    implements _$$BuildEventBuildAndroidImplCopyWith<$Res> {
  __$$BuildEventBuildAndroidImplCopyWithImpl(
      _$BuildEventBuildAndroidImpl _value,
      $Res Function(_$BuildEventBuildAndroidImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = freezed,
  }) {
    return _then(_$BuildEventBuildAndroidImpl(
      flavor: freezed == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BuildEventBuildAndroidImpl implements BuildEventBuildAndroid {
  const _$BuildEventBuildAndroidImpl({this.flavor});

  @override
  final String? flavor;

  @override
  String toString() {
    return 'BuildEvent.buildAndroid(flavor: $flavor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildEventBuildAndroidImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flavor);

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildEventBuildAndroidImplCopyWith<_$BuildEventBuildAndroidImpl>
      get copyWith => __$$BuildEventBuildAndroidImplCopyWithImpl<
          _$BuildEventBuildAndroidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? flavor) buildAndroid,
    required TResult Function() buildWindows,
  }) {
    return buildAndroid(flavor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? flavor)? buildAndroid,
    TResult? Function()? buildWindows,
  }) {
    return buildAndroid?.call(flavor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? flavor)? buildAndroid,
    TResult Function()? buildWindows,
    required TResult orElse(),
  }) {
    if (buildAndroid != null) {
      return buildAndroid(flavor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildEventStarted value) started,
    required TResult Function(BuildEventBuildAndroid value) buildAndroid,
    required TResult Function(BuildEventBuildWindows value) buildWindows,
  }) {
    return buildAndroid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildEventStarted value)? started,
    TResult? Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult? Function(BuildEventBuildWindows value)? buildWindows,
  }) {
    return buildAndroid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildEventStarted value)? started,
    TResult Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult Function(BuildEventBuildWindows value)? buildWindows,
    required TResult orElse(),
  }) {
    if (buildAndroid != null) {
      return buildAndroid(this);
    }
    return orElse();
  }
}

abstract class BuildEventBuildAndroid implements BuildEvent {
  const factory BuildEventBuildAndroid({final String? flavor}) =
      _$BuildEventBuildAndroidImpl;

  String? get flavor;

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildEventBuildAndroidImplCopyWith<_$BuildEventBuildAndroidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuildEventBuildWindowsImplCopyWith<$Res> {
  factory _$$BuildEventBuildWindowsImplCopyWith(
          _$BuildEventBuildWindowsImpl value,
          $Res Function(_$BuildEventBuildWindowsImpl) then) =
      __$$BuildEventBuildWindowsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuildEventBuildWindowsImplCopyWithImpl<$Res>
    extends _$BuildEventCopyWithImpl<$Res, _$BuildEventBuildWindowsImpl>
    implements _$$BuildEventBuildWindowsImplCopyWith<$Res> {
  __$$BuildEventBuildWindowsImplCopyWithImpl(
      _$BuildEventBuildWindowsImpl _value,
      $Res Function(_$BuildEventBuildWindowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BuildEventBuildWindowsImpl implements BuildEventBuildWindows {
  const _$BuildEventBuildWindowsImpl();

  @override
  String toString() {
    return 'BuildEvent.buildWindows()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildEventBuildWindowsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? flavor) buildAndroid,
    required TResult Function() buildWindows,
  }) {
    return buildWindows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? flavor)? buildAndroid,
    TResult? Function()? buildWindows,
  }) {
    return buildWindows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? flavor)? buildAndroid,
    TResult Function()? buildWindows,
    required TResult orElse(),
  }) {
    if (buildWindows != null) {
      return buildWindows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildEventStarted value) started,
    required TResult Function(BuildEventBuildAndroid value) buildAndroid,
    required TResult Function(BuildEventBuildWindows value) buildWindows,
  }) {
    return buildWindows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildEventStarted value)? started,
    TResult? Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult? Function(BuildEventBuildWindows value)? buildWindows,
  }) {
    return buildWindows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildEventStarted value)? started,
    TResult Function(BuildEventBuildAndroid value)? buildAndroid,
    TResult Function(BuildEventBuildWindows value)? buildWindows,
    required TResult orElse(),
  }) {
    if (buildWindows != null) {
      return buildWindows(this);
    }
    return orElse();
  }
}

abstract class BuildEventBuildWindows implements BuildEvent {
  const factory BuildEventBuildWindows() = _$BuildEventBuildWindowsImpl;
}

/// @nodoc
mixin _$BuildState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildStateCopyWith<$Res> {
  factory $BuildStateCopyWith(
          BuildState value, $Res Function(BuildState) then) =
      _$BuildStateCopyWithImpl<$Res, BuildState>;
}

/// @nodoc
class _$BuildStateCopyWithImpl<$Res, $Val extends BuildState>
    implements $BuildStateCopyWith<$Res> {
  _$BuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BuildStateInitialImplCopyWith<$Res> {
  factory _$$BuildStateInitialImplCopyWith(_$BuildStateInitialImpl value,
          $Res Function(_$BuildStateInitialImpl) then) =
      __$$BuildStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuildStateInitialImplCopyWithImpl<$Res>
    extends _$BuildStateCopyWithImpl<$Res, _$BuildStateInitialImpl>
    implements _$$BuildStateInitialImplCopyWith<$Res> {
  __$$BuildStateInitialImplCopyWithImpl(_$BuildStateInitialImpl _value,
      $Res Function(_$BuildStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BuildStateInitialImpl implements BuildStateInitial {
  const _$BuildStateInitialImpl();

  @override
  String toString() {
    return 'BuildState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BuildStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
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
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BuildStateInitial implements BuildState {
  const factory BuildStateInitial() = _$BuildStateInitialImpl;
}

/// @nodoc
abstract class _$$BuildStateBuildingImplCopyWith<$Res> {
  factory _$$BuildStateBuildingImplCopyWith(_$BuildStateBuildingImpl value,
          $Res Function(_$BuildStateBuildingImpl) then) =
      __$$BuildStateBuildingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String platform});
}

/// @nodoc
class __$$BuildStateBuildingImplCopyWithImpl<$Res>
    extends _$BuildStateCopyWithImpl<$Res, _$BuildStateBuildingImpl>
    implements _$$BuildStateBuildingImplCopyWith<$Res> {
  __$$BuildStateBuildingImplCopyWithImpl(_$BuildStateBuildingImpl _value,
      $Res Function(_$BuildStateBuildingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_$BuildStateBuildingImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BuildStateBuildingImpl implements BuildStateBuilding {
  const _$BuildStateBuildingImpl({required this.platform});

  @override
  final String platform;

  @override
  String toString() {
    return 'BuildState.building(platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildStateBuildingImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildStateBuildingImplCopyWith<_$BuildStateBuildingImpl> get copyWith =>
      __$$BuildStateBuildingImplCopyWithImpl<_$BuildStateBuildingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) {
    return building(platform);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) {
    return building?.call(platform);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
    required TResult orElse(),
  }) {
    if (building != null) {
      return building(platform);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) {
    return building(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) {
    return building?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (building != null) {
      return building(this);
    }
    return orElse();
  }
}

abstract class BuildStateBuilding implements BuildState {
  const factory BuildStateBuilding({required final String platform}) =
      _$BuildStateBuildingImpl;

  String get platform;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildStateBuildingImplCopyWith<_$BuildStateBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuildStateSuccessImplCopyWith<$Res> {
  factory _$$BuildStateSuccessImplCopyWith(_$BuildStateSuccessImpl value,
          $Res Function(_$BuildStateSuccessImpl) then) =
      __$$BuildStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String platform, String outputPath});
}

/// @nodoc
class __$$BuildStateSuccessImplCopyWithImpl<$Res>
    extends _$BuildStateCopyWithImpl<$Res, _$BuildStateSuccessImpl>
    implements _$$BuildStateSuccessImplCopyWith<$Res> {
  __$$BuildStateSuccessImplCopyWithImpl(_$BuildStateSuccessImpl _value,
      $Res Function(_$BuildStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? outputPath = null,
  }) {
    return _then(_$BuildStateSuccessImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      outputPath: null == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BuildStateSuccessImpl implements BuildStateSuccess {
  const _$BuildStateSuccessImpl(
      {required this.platform, required this.outputPath});

  @override
  final String platform;
  @override
  final String outputPath;

  @override
  String toString() {
    return 'BuildState.success(platform: $platform, outputPath: $outputPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildStateSuccessImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, outputPath);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildStateSuccessImplCopyWith<_$BuildStateSuccessImpl> get copyWith =>
      __$$BuildStateSuccessImplCopyWithImpl<_$BuildStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) {
    return success(platform, outputPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) {
    return success?.call(platform, outputPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(platform, outputPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BuildStateSuccess implements BuildState {
  const factory BuildStateSuccess(
      {required final String platform,
      required final String outputPath}) = _$BuildStateSuccessImpl;

  String get platform;
  String get outputPath;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildStateSuccessImplCopyWith<_$BuildStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuildStateFailureImplCopyWith<$Res> {
  factory _$$BuildStateFailureImplCopyWith(_$BuildStateFailureImpl value,
          $Res Function(_$BuildStateFailureImpl) then) =
      __$$BuildStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String platform, String error});
}

/// @nodoc
class __$$BuildStateFailureImplCopyWithImpl<$Res>
    extends _$BuildStateCopyWithImpl<$Res, _$BuildStateFailureImpl>
    implements _$$BuildStateFailureImplCopyWith<$Res> {
  __$$BuildStateFailureImplCopyWithImpl(_$BuildStateFailureImpl _value,
      $Res Function(_$BuildStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? error = null,
  }) {
    return _then(_$BuildStateFailureImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BuildStateFailureImpl implements BuildStateFailure {
  const _$BuildStateFailureImpl({required this.platform, required this.error});

  @override
  final String platform;
  @override
  final String error;

  @override
  String toString() {
    return 'BuildState.failure(platform: $platform, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildStateFailureImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, error);

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildStateFailureImplCopyWith<_$BuildStateFailureImpl> get copyWith =>
      __$$BuildStateFailureImplCopyWithImpl<_$BuildStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String platform) building,
    required TResult Function(String platform, String outputPath) success,
    required TResult Function(String platform, String error) failure,
  }) {
    return failure(platform, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String platform)? building,
    TResult? Function(String platform, String outputPath)? success,
    TResult? Function(String platform, String error)? failure,
  }) {
    return failure?.call(platform, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String platform)? building,
    TResult Function(String platform, String outputPath)? success,
    TResult Function(String platform, String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(platform, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildStateInitial value) initial,
    required TResult Function(BuildStateBuilding value) building,
    required TResult Function(BuildStateSuccess value) success,
    required TResult Function(BuildStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BuildStateInitial value)? initial,
    TResult? Function(BuildStateBuilding value)? building,
    TResult? Function(BuildStateSuccess value)? success,
    TResult? Function(BuildStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildStateInitial value)? initial,
    TResult Function(BuildStateBuilding value)? building,
    TResult Function(BuildStateSuccess value)? success,
    TResult Function(BuildStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BuildStateFailure implements BuildState {
  const factory BuildStateFailure(
      {required final String platform,
      required final String error}) = _$BuildStateFailureImpl;

  String get platform;
  String get error;

  /// Create a copy of BuildState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildStateFailureImplCopyWith<_$BuildStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
