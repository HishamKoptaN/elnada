// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_event.dart';

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
