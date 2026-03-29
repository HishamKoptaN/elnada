// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployment_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeploymentConfig {
  String get flavor;
  String get shorebirdToken;
  String get shorebirdAppId;
  String? get firebaseToken;
  String? get githubRepository;
  bool get skipFirebase;
  bool get skipGithub;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeploymentConfigCopyWith<DeploymentConfig> get copyWith =>
      _$DeploymentConfigCopyWithImpl<DeploymentConfig>(
          this as DeploymentConfig, _$identity);

  /// Serializes this DeploymentConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeploymentConfig &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.shorebirdToken, shorebirdToken) ||
                other.shorebirdToken == shorebirdToken) &&
            (identical(other.shorebirdAppId, shorebirdAppId) ||
                other.shorebirdAppId == shorebirdAppId) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      flavor,
      shorebirdToken,
      shorebirdAppId,
      firebaseToken,
      githubRepository,
      skipFirebase,
      skipGithub);

  @override
  String toString() {
    return 'DeploymentConfig(flavor: $flavor, shorebirdToken: $shorebirdToken, shorebirdAppId: $shorebirdAppId, firebaseToken: $firebaseToken, githubRepository: $githubRepository, skipFirebase: $skipFirebase, skipGithub: $skipGithub)';
  }
}

/// @nodoc
abstract mixin class $DeploymentConfigCopyWith<$Res> {
  factory $DeploymentConfigCopyWith(
          DeploymentConfig value, $Res Function(DeploymentConfig) _then) =
      _$DeploymentConfigCopyWithImpl;
  @useResult
  $Res call(
      {String flavor,
      String shorebirdToken,
      String shorebirdAppId,
      String? firebaseToken,
      String? githubRepository,
      bool skipFirebase,
      bool skipGithub});
}

/// @nodoc
class _$DeploymentConfigCopyWithImpl<$Res>
    implements $DeploymentConfigCopyWith<$Res> {
  _$DeploymentConfigCopyWithImpl(this._self, this._then);

  final DeploymentConfig _self;
  final $Res Function(DeploymentConfig) _then;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? shorebirdToken = null,
    Object? shorebirdAppId = null,
    Object? firebaseToken = freezed,
    Object? githubRepository = freezed,
    Object? skipFirebase = null,
    Object? skipGithub = null,
  }) {
    return _then(_self.copyWith(
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdToken: null == shorebirdToken
          ? _self.shorebirdToken
          : shorebirdToken // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdAppId: null == shorebirdAppId
          ? _self.shorebirdAppId
          : shorebirdAppId // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _self.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      githubRepository: freezed == githubRepository
          ? _self.githubRepository
          : githubRepository // ignore: cast_nullable_to_non_nullable
              as String?,
      skipFirebase: null == skipFirebase
          ? _self.skipFirebase
          : skipFirebase // ignore: cast_nullable_to_non_nullable
              as bool,
      skipGithub: null == skipGithub
          ? _self.skipGithub
          : skipGithub // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeploymentConfig].
extension DeploymentConfigPatterns on DeploymentConfig {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DeploymentConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_DeploymentConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DeploymentConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String flavor,
            String shorebirdToken,
            String shorebirdAppId,
            String? firebaseToken,
            String? githubRepository,
            bool skipFirebase,
            bool skipGithub)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig() when $default != null:
        return $default(
            _that.flavor,
            _that.shorebirdToken,
            _that.shorebirdAppId,
            _that.firebaseToken,
            _that.githubRepository,
            _that.skipFirebase,
            _that.skipGithub);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String flavor,
            String shorebirdToken,
            String shorebirdAppId,
            String? firebaseToken,
            String? githubRepository,
            bool skipFirebase,
            bool skipGithub)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig():
        return $default(
            _that.flavor,
            _that.shorebirdToken,
            _that.shorebirdAppId,
            _that.firebaseToken,
            _that.githubRepository,
            _that.skipFirebase,
            _that.skipGithub);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String flavor,
            String shorebirdToken,
            String shorebirdAppId,
            String? firebaseToken,
            String? githubRepository,
            bool skipFirebase,
            bool skipGithub)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeploymentConfig() when $default != null:
        return $default(
            _that.flavor,
            _that.shorebirdToken,
            _that.shorebirdAppId,
            _that.firebaseToken,
            _that.githubRepository,
            _that.skipFirebase,
            _that.skipGithub);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DeploymentConfig implements DeploymentConfig {
  const _DeploymentConfig(
      {required this.flavor,
      required this.shorebirdToken,
      required this.shorebirdAppId,
      this.firebaseToken,
      this.githubRepository,
      this.skipFirebase = false,
      this.skipGithub = false});
  factory _DeploymentConfig.fromJson(Map<String, dynamic> json) =>
      _$DeploymentConfigFromJson(json);

  @override
  final String flavor;
  @override
  final String shorebirdToken;
  @override
  final String shorebirdAppId;
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

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeploymentConfigCopyWith<_DeploymentConfig> get copyWith =>
      __$DeploymentConfigCopyWithImpl<_DeploymentConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeploymentConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeploymentConfig &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.shorebirdToken, shorebirdToken) ||
                other.shorebirdToken == shorebirdToken) &&
            (identical(other.shorebirdAppId, shorebirdAppId) ||
                other.shorebirdAppId == shorebirdAppId) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      flavor,
      shorebirdToken,
      shorebirdAppId,
      firebaseToken,
      githubRepository,
      skipFirebase,
      skipGithub);

  @override
  String toString() {
    return 'DeploymentConfig(flavor: $flavor, shorebirdToken: $shorebirdToken, shorebirdAppId: $shorebirdAppId, firebaseToken: $firebaseToken, githubRepository: $githubRepository, skipFirebase: $skipFirebase, skipGithub: $skipGithub)';
  }
}

/// @nodoc
abstract mixin class _$DeploymentConfigCopyWith<$Res>
    implements $DeploymentConfigCopyWith<$Res> {
  factory _$DeploymentConfigCopyWith(
          _DeploymentConfig value, $Res Function(_DeploymentConfig) _then) =
      __$DeploymentConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String flavor,
      String shorebirdToken,
      String shorebirdAppId,
      String? firebaseToken,
      String? githubRepository,
      bool skipFirebase,
      bool skipGithub});
}

/// @nodoc
class __$DeploymentConfigCopyWithImpl<$Res>
    implements _$DeploymentConfigCopyWith<$Res> {
  __$DeploymentConfigCopyWithImpl(this._self, this._then);

  final _DeploymentConfig _self;
  final $Res Function(_DeploymentConfig) _then;

  /// Create a copy of DeploymentConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flavor = null,
    Object? shorebirdToken = null,
    Object? shorebirdAppId = null,
    Object? firebaseToken = freezed,
    Object? githubRepository = freezed,
    Object? skipFirebase = null,
    Object? skipGithub = null,
  }) {
    return _then(_DeploymentConfig(
      flavor: null == flavor
          ? _self.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdToken: null == shorebirdToken
          ? _self.shorebirdToken
          : shorebirdToken // ignore: cast_nullable_to_non_nullable
              as String,
      shorebirdAppId: null == shorebirdAppId
          ? _self.shorebirdAppId
          : shorebirdAppId // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _self.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      githubRepository: freezed == githubRepository
          ? _self.githubRepository
          : githubRepository // ignore: cast_nullable_to_non_nullable
              as String?,
      skipFirebase: null == skipFirebase
          ? _self.skipFirebase
          : skipFirebase // ignore: cast_nullable_to_non_nullable
              as bool,
      skipGithub: null == skipGithub
          ? _self.skipGithub
          : skipGithub // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
