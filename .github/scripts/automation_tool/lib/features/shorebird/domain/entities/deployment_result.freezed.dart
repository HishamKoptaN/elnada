// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeploymentResult _$DeploymentResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'patch':
      return DeploymentResultPatch.fromJson(json);
    case 'release':
      return DeploymentResultRelease.fromJson(json);
    case 'failure':
      return DeploymentResultFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DeploymentResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DeploymentResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patch,
    required TResult Function(String version) release,
    required TResult Function(String reason) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patch,
    TResult? Function(String version)? release,
    TResult? Function(String reason)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patch,
    TResult Function(String version)? release,
    TResult Function(String reason)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeploymentResultPatch value) patch,
    required TResult Function(DeploymentResultRelease value) release,
    required TResult Function(DeploymentResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeploymentResultPatch value)? patch,
    TResult? Function(DeploymentResultRelease value)? release,
    TResult? Function(DeploymentResultFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeploymentResultPatch value)? patch,
    TResult Function(DeploymentResultRelease value)? release,
    TResult Function(DeploymentResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DeploymentResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeploymentResultCopyWith<$Res> {
  factory $DeploymentResultCopyWith(
          DeploymentResult value, $Res Function(DeploymentResult) then) =
      _$DeploymentResultCopyWithImpl<$Res, DeploymentResult>;
}

/// @nodoc
class _$DeploymentResultCopyWithImpl<$Res, $Val extends DeploymentResult>
    implements $DeploymentResultCopyWith<$Res> {
  _$DeploymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeploymentResultPatchImplCopyWith<$Res> {
  factory _$$DeploymentResultPatchImplCopyWith(
          _$DeploymentResultPatchImpl value,
          $Res Function(_$DeploymentResultPatchImpl) then) =
      __$$DeploymentResultPatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeploymentResultPatchImplCopyWithImpl<$Res>
    extends _$DeploymentResultCopyWithImpl<$Res, _$DeploymentResultPatchImpl>
    implements _$$DeploymentResultPatchImplCopyWith<$Res> {
  __$$DeploymentResultPatchImplCopyWithImpl(_$DeploymentResultPatchImpl _value,
      $Res Function(_$DeploymentResultPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DeploymentResultPatchImpl implements DeploymentResultPatch {
  const _$DeploymentResultPatchImpl({final String? $type})
      : $type = $type ?? 'patch';

  factory _$DeploymentResultPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeploymentResultPatchImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeploymentResult.patch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeploymentResultPatchImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patch,
    required TResult Function(String version) release,
    required TResult Function(String reason) failure,
  }) {
    return patch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patch,
    TResult? Function(String version)? release,
    TResult? Function(String reason)? failure,
  }) {
    return patch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patch,
    TResult Function(String version)? release,
    TResult Function(String reason)? failure,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeploymentResultPatch value) patch,
    required TResult Function(DeploymentResultRelease value) release,
    required TResult Function(DeploymentResultFailure value) failure,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeploymentResultPatch value)? patch,
    TResult? Function(DeploymentResultRelease value)? release,
    TResult? Function(DeploymentResultFailure value)? failure,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeploymentResultPatch value)? patch,
    TResult Function(DeploymentResultRelease value)? release,
    TResult Function(DeploymentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeploymentResultPatchImplToJson(
      this,
    );
  }
}

abstract class DeploymentResultPatch implements DeploymentResult {
  const factory DeploymentResultPatch() = _$DeploymentResultPatchImpl;

  factory DeploymentResultPatch.fromJson(Map<String, dynamic> json) =
      _$DeploymentResultPatchImpl.fromJson;
}

/// @nodoc
abstract class _$$DeploymentResultReleaseImplCopyWith<$Res> {
  factory _$$DeploymentResultReleaseImplCopyWith(
          _$DeploymentResultReleaseImpl value,
          $Res Function(_$DeploymentResultReleaseImpl) then) =
      __$$DeploymentResultReleaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$DeploymentResultReleaseImplCopyWithImpl<$Res>
    extends _$DeploymentResultCopyWithImpl<$Res, _$DeploymentResultReleaseImpl>
    implements _$$DeploymentResultReleaseImplCopyWith<$Res> {
  __$$DeploymentResultReleaseImplCopyWithImpl(
      _$DeploymentResultReleaseImpl _value,
      $Res Function(_$DeploymentResultReleaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$DeploymentResultReleaseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeploymentResultReleaseImpl implements DeploymentResultRelease {
  const _$DeploymentResultReleaseImpl(
      {required this.version, final String? $type})
      : $type = $type ?? 'release';

  factory _$DeploymentResultReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeploymentResultReleaseImplFromJson(json);

  @override
  final String version;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeploymentResult.release(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeploymentResultReleaseImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeploymentResultReleaseImplCopyWith<_$DeploymentResultReleaseImpl>
      get copyWith => __$$DeploymentResultReleaseImplCopyWithImpl<
          _$DeploymentResultReleaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patch,
    required TResult Function(String version) release,
    required TResult Function(String reason) failure,
  }) {
    return release(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patch,
    TResult? Function(String version)? release,
    TResult? Function(String reason)? failure,
  }) {
    return release?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patch,
    TResult Function(String version)? release,
    TResult Function(String reason)? failure,
    required TResult orElse(),
  }) {
    if (release != null) {
      return release(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeploymentResultPatch value) patch,
    required TResult Function(DeploymentResultRelease value) release,
    required TResult Function(DeploymentResultFailure value) failure,
  }) {
    return release(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeploymentResultPatch value)? patch,
    TResult? Function(DeploymentResultRelease value)? release,
    TResult? Function(DeploymentResultFailure value)? failure,
  }) {
    return release?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeploymentResultPatch value)? patch,
    TResult Function(DeploymentResultRelease value)? release,
    TResult Function(DeploymentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (release != null) {
      return release(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeploymentResultReleaseImplToJson(
      this,
    );
  }
}

abstract class DeploymentResultRelease implements DeploymentResult {
  const factory DeploymentResultRelease({required final String version}) =
      _$DeploymentResultReleaseImpl;

  factory DeploymentResultRelease.fromJson(Map<String, dynamic> json) =
      _$DeploymentResultReleaseImpl.fromJson;

  String get version;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeploymentResultReleaseImplCopyWith<_$DeploymentResultReleaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeploymentResultFailureImplCopyWith<$Res> {
  factory _$$DeploymentResultFailureImplCopyWith(
          _$DeploymentResultFailureImpl value,
          $Res Function(_$DeploymentResultFailureImpl) then) =
      __$$DeploymentResultFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$DeploymentResultFailureImplCopyWithImpl<$Res>
    extends _$DeploymentResultCopyWithImpl<$Res, _$DeploymentResultFailureImpl>
    implements _$$DeploymentResultFailureImplCopyWith<$Res> {
  __$$DeploymentResultFailureImplCopyWithImpl(
      _$DeploymentResultFailureImpl _value,
      $Res Function(_$DeploymentResultFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$DeploymentResultFailureImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeploymentResultFailureImpl implements DeploymentResultFailure {
  const _$DeploymentResultFailureImpl(
      {required this.reason, final String? $type})
      : $type = $type ?? 'failure';

  factory _$DeploymentResultFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeploymentResultFailureImplFromJson(json);

  @override
  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeploymentResult.failure(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeploymentResultFailureImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeploymentResultFailureImplCopyWith<_$DeploymentResultFailureImpl>
      get copyWith => __$$DeploymentResultFailureImplCopyWithImpl<
          _$DeploymentResultFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() patch,
    required TResult Function(String version) release,
    required TResult Function(String reason) failure,
  }) {
    return failure(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? patch,
    TResult? Function(String version)? release,
    TResult? Function(String reason)? failure,
  }) {
    return failure?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? patch,
    TResult Function(String version)? release,
    TResult Function(String reason)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeploymentResultPatch value) patch,
    required TResult Function(DeploymentResultRelease value) release,
    required TResult Function(DeploymentResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeploymentResultPatch value)? patch,
    TResult? Function(DeploymentResultRelease value)? release,
    TResult? Function(DeploymentResultFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeploymentResultPatch value)? patch,
    TResult Function(DeploymentResultRelease value)? release,
    TResult Function(DeploymentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeploymentResultFailureImplToJson(
      this,
    );
  }
}

abstract class DeploymentResultFailure implements DeploymentResult {
  const factory DeploymentResultFailure({required final String reason}) =
      _$DeploymentResultFailureImpl;

  factory DeploymentResultFailure.fromJson(Map<String, dynamic> json) =
      _$DeploymentResultFailureImpl.fromJson;

  String get reason;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeploymentResultFailureImplCopyWith<_$DeploymentResultFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
