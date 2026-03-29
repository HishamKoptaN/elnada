// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  /// Serializes this DeploymentResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeploymentResult);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeploymentResult()';
  }
}

/// @nodoc
class $DeploymentResultCopyWith<$Res> {
  $DeploymentResultCopyWith(
      DeploymentResult _, $Res Function(DeploymentResult) __);
}

/// Adds pattern-matching-related methods to [DeploymentResult].
extension DeploymentResultPatterns on DeploymentResult {
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
    TResult Function(DeploymentResultPatch value)? patch,
    TResult Function(DeploymentResultRelease value)? release,
    TResult Function(DeploymentResultFailure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch() when patch != null:
        return patch(_that);
      case DeploymentResultRelease() when release != null:
        return release(_that);
      case DeploymentResultFailure() when failure != null:
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
    required TResult Function(DeploymentResultPatch value) patch,
    required TResult Function(DeploymentResultRelease value) release,
    required TResult Function(DeploymentResultFailure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch():
        return patch(_that);
      case DeploymentResultRelease():
        return release(_that);
      case DeploymentResultFailure():
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
    TResult? Function(DeploymentResultPatch value)? patch,
    TResult? Function(DeploymentResultRelease value)? release,
    TResult? Function(DeploymentResultFailure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch() when patch != null:
        return patch(_that);
      case DeploymentResultRelease() when release != null:
        return release(_that);
      case DeploymentResultFailure() when failure != null:
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
    TResult Function()? patch,
    TResult Function(String version)? release,
    TResult Function(String reason)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch() when patch != null:
        return patch();
      case DeploymentResultRelease() when release != null:
        return release(_that.version);
      case DeploymentResultFailure() when failure != null:
        return failure(_that.reason);
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
    required TResult Function() patch,
    required TResult Function(String version) release,
    required TResult Function(String reason) failure,
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch():
        return patch();
      case DeploymentResultRelease():
        return release(_that.version);
      case DeploymentResultFailure():
        return failure(_that.reason);
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
    TResult? Function()? patch,
    TResult? Function(String version)? release,
    TResult? Function(String reason)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case DeploymentResultPatch() when patch != null:
        return patch();
      case DeploymentResultRelease() when release != null:
        return release(_that.version);
      case DeploymentResultFailure() when failure != null:
        return failure(_that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class DeploymentResultPatch implements DeploymentResult {
  const DeploymentResultPatch({final String? $type}) : $type = $type ?? 'patch';
  factory DeploymentResultPatch.fromJson(Map<String, dynamic> json) =>
      _$DeploymentResultPatchFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$DeploymentResultPatchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeploymentResultPatch);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeploymentResult.patch()';
  }
}

/// @nodoc
@JsonSerializable()
class DeploymentResultRelease implements DeploymentResult {
  const DeploymentResultRelease({required this.version, final String? $type})
      : $type = $type ?? 'release';
  factory DeploymentResultRelease.fromJson(Map<String, dynamic> json) =>
      _$DeploymentResultReleaseFromJson(json);

  final String version;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeploymentResultReleaseCopyWith<DeploymentResultRelease> get copyWith =>
      _$DeploymentResultReleaseCopyWithImpl<DeploymentResultRelease>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeploymentResultReleaseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeploymentResultRelease &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  @override
  String toString() {
    return 'DeploymentResult.release(version: $version)';
  }
}

/// @nodoc
abstract mixin class $DeploymentResultReleaseCopyWith<$Res>
    implements $DeploymentResultCopyWith<$Res> {
  factory $DeploymentResultReleaseCopyWith(DeploymentResultRelease value,
          $Res Function(DeploymentResultRelease) _then) =
      _$DeploymentResultReleaseCopyWithImpl;
  @useResult
  $Res call({String version});
}

/// @nodoc
class _$DeploymentResultReleaseCopyWithImpl<$Res>
    implements $DeploymentResultReleaseCopyWith<$Res> {
  _$DeploymentResultReleaseCopyWithImpl(this._self, this._then);

  final DeploymentResultRelease _self;
  final $Res Function(DeploymentResultRelease) _then;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
  }) {
    return _then(DeploymentResultRelease(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DeploymentResultFailure implements DeploymentResult {
  const DeploymentResultFailure({required this.reason, final String? $type})
      : $type = $type ?? 'failure';
  factory DeploymentResultFailure.fromJson(Map<String, dynamic> json) =>
      _$DeploymentResultFailureFromJson(json);

  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeploymentResultFailureCopyWith<DeploymentResultFailure> get copyWith =>
      _$DeploymentResultFailureCopyWithImpl<DeploymentResultFailure>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeploymentResultFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeploymentResultFailure &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString() {
    return 'DeploymentResult.failure(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $DeploymentResultFailureCopyWith<$Res>
    implements $DeploymentResultCopyWith<$Res> {
  factory $DeploymentResultFailureCopyWith(DeploymentResultFailure value,
          $Res Function(DeploymentResultFailure) _then) =
      _$DeploymentResultFailureCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$DeploymentResultFailureCopyWithImpl<$Res>
    implements $DeploymentResultFailureCopyWith<$Res> {
  _$DeploymentResultFailureCopyWithImpl(this._self, this._then);

  final DeploymentResultFailure _self;
  final $Res Function(DeploymentResultFailure) _then;

  /// Create a copy of DeploymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(DeploymentResultFailure(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
