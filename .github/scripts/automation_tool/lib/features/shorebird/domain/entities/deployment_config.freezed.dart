// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployment_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeploymentConfig _$DeploymentConfigFromJson(Map<String, dynamic> json) {
  return _DeploymentConfig.fromJson(json);
}

/// @nodoc
mixin _$DeploymentConfig {
  String get flavor => throw _privateConstructorUsedError;
  String get shorebirdToken => throw _privateConstructorUsedError;
  String? get firebaseToken => throw _privateConstructorUsedError;
  String? get githubRepository => throw _privateConstructorUsedError;
  bool get skipFirebase => throw _privateConstructorUsedError;
  bool get skipGithub => throw _privateConstructorUsedError;

  /// Serializes this DeploymentConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeploymentConfigCopyWith<DeploymentConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeploymentConfigCopyWith<$Res> {
  factory $DeploymentConfigCopyWith(
          DeploymentConfig value, $Res Function(DeploymentConfig) then) =
      _$DeploymentConfigCopyWithImpl<$Res, DeploymentConfig>;
  @useResult
  $Res call(
      {String flavor,
      String shorebirdToken,
      String? firebaseToken,
      String? githubRepository,
      bool skipFirebase,
      bool skipGithub});
}

/// @nodoc
class _$DeploymentConfigCopyWithImpl<$Res, $Val extends DeploymentConfig>
    implements $DeploymentConfigCopyWith<$Res> {
  _$DeploymentConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? shorebirdToken = null,
    Object? firebaseToken = freezed,
    Object? githubRepository = freezed,
    Object? skipFirebase = null,
    Object? skipGithub = null,
  }) {
    return _then(_value.copyWith(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdToken: null == shorebirdToken
          ? _value.shorebirdToken
          : shorebirdToken // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      githubRepository: freezed == githubRepository
          ? _value.githubRepository
          : githubRepository // ignore: cast_nullable_to_non_nullable
              as String?,
      skipFirebase: null == skipFirebase
          ? _value.skipFirebase
          : skipFirebase // ignore: cast_nullable_to_non_nullable
              as bool,
      skipGithub: null == skipGithub
          ? _value.skipGithub
          : skipGithub // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeploymentConfigImplCopyWith<$Res>
    implements $DeploymentConfigCopyWith<$Res> {
  factory _$$DeploymentConfigImplCopyWith(_$DeploymentConfigImpl value,
          $Res Function(_$DeploymentConfigImpl) then) =
      __$$DeploymentConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String flavor,
      String shorebirdToken,
      String? firebaseToken,
      String? githubRepository,
      bool skipFirebase,
      bool skipGithub});
}

/// @nodoc
class __$$DeploymentConfigImplCopyWithImpl<$Res>
    extends _$DeploymentConfigCopyWithImpl<$Res, _$DeploymentConfigImpl>
    implements _$$DeploymentConfigImplCopyWith<$Res> {
  __$$DeploymentConfigImplCopyWithImpl(_$DeploymentConfigImpl _value,
      $Res Function(_$DeploymentConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? shorebirdToken = null,
    Object? firebaseToken = freezed,
    Object? githubRepository = freezed,
    Object? skipFirebase = null,
    Object? skipGithub = null,
  }) {
    return _then(_$DeploymentConfigImpl(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdToken: null == shorebirdToken
          ? _value.shorebirdToken
          : shorebirdToken // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      githubRepository: freezed == githubRepository
          ? _value.githubRepository
          : githubRepository // ignore: cast_nullable_to_non_nullable
              as String?,
      skipFirebase: null == skipFirebase
          ? _value.skipFirebase
          : skipFirebase // ignore: cast_nullable_to_non_nullable
              as bool,
      skipGithub: null == skipGithub
          ? _value.skipGithub
          : skipGithub // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeploymentConfigImpl implements _DeploymentConfig {
  const _$DeploymentConfigImpl(
      {required this.flavor,
      required this.shorebirdToken,
      this.firebaseToken,
      this.githubRepository,
      this.skipFirebase = false,
      this.skipGithub = false});

  factory _$DeploymentConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeploymentConfigImplFromJson(json);

  @override
  final String flavor;
  @override
  final String shorebirdToken;
  @override
  final String? firebaseToken;
  @override
  final String? githubRepository;
  @override
  @JsonKey()
  final bool skipFirebase;
  @override
  @JsonKey()
  final bool skipGithub;

  @override
  String toString() {
    return 'DeploymentConfig(flavor: $flavor, shorebirdToken: $shorebirdToken, firebaseToken: $firebaseToken, githubRepository: $githubRepository, skipFirebase: $skipFirebase, skipGithub: $skipGithub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeploymentConfigImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.shorebirdToken, shorebirdToken) ||
                other.shorebirdToken == shorebirdToken) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken) &&
            (identical(other.githubRepository, githubRepository) ||
                other.githubRepository == githubRepository) &&
            (identical(other.skipFirebase, skipFirebase) ||
                other.skipFirebase == skipFirebase) &&
            (identical(other.skipGithub, skipGithub) ||
                other.skipGithub == skipGithub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flavor, shorebirdToken,
      firebaseToken, githubRepository, skipFirebase, skipGithub);

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeploymentConfigImplCopyWith<_$DeploymentConfigImpl> get copyWith =>
      __$$DeploymentConfigImplCopyWithImpl<_$DeploymentConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeploymentConfigImplToJson(
      this,
    );
  }
}

abstract class _DeploymentConfig implements DeploymentConfig {
  const factory _DeploymentConfig(
      {required final String flavor,
      required final String shorebirdToken,
      final String? firebaseToken,
      final String? githubRepository,
      final bool skipFirebase,
      final bool skipGithub}) = _$DeploymentConfigImpl;

  factory _DeploymentConfig.fromJson(Map<String, dynamic> json) =
      _$DeploymentConfigImpl.fromJson;

  @override
  String get flavor;
  @override
  String get shorebirdToken;
  @override
  String? get firebaseToken;
  @override
  String? get githubRepository;
  @override
  bool get skipFirebase;
  @override
  bool get skipGithub;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeploymentConfigImplCopyWith<_$DeploymentConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
