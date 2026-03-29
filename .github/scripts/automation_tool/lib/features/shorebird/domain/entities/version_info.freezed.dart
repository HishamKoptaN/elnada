// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VersionInfo {
  String get fullVersion;
  String get cleanVersion;
  int get major;
  int get minor;
  int get patch;
  int get buildNumber;

  /// Create a copy of VersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VersionInfoCopyWith<VersionInfo> get copyWith =>
      _$VersionInfoCopyWithImpl<VersionInfo>(this as VersionInfo, _$identity);

  /// Serializes this VersionInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VersionInfo &&
            (identical(other.fullVersion, fullVersion) ||
                other.fullVersion == fullVersion) &&
            (identical(other.cleanVersion, cleanVersion) ||
                other.cleanVersion == cleanVersion) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullVersion, cleanVersion, major, minor, patch, buildNumber);

  @override
  String toString() {
    return 'VersionInfo(fullVersion: $fullVersion, cleanVersion: $cleanVersion, major: $major, minor: $minor, patch: $patch, buildNumber: $buildNumber)';
  }
}

/// @nodoc
abstract mixin class $VersionInfoCopyWith<$Res> {
  factory $VersionInfoCopyWith(
          VersionInfo value, $Res Function(VersionInfo) _then) =
      _$VersionInfoCopyWithImpl;
  @useResult
  $Res call(
      {String fullVersion,
      String cleanVersion,
      int major,
      int minor,
      int patch,
      int buildNumber});
}

/// @nodoc
class _$VersionInfoCopyWithImpl<$Res> implements $VersionInfoCopyWith<$Res> {
  _$VersionInfoCopyWithImpl(this._self, this._then);

  final VersionInfo _self;
  final $Res Function(VersionInfo) _then;

  /// Create a copy of VersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullVersion = null,
    Object? cleanVersion = null,
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? buildNumber = null,
  }) {
    return _then(_self.copyWith(
      fullVersion: null == fullVersion
          ? _self.fullVersion
          : fullVersion // ignore: cast_nullable_to_non_nullable
              as String,
      cleanVersion: null == cleanVersion
          ? _self.cleanVersion
          : cleanVersion // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
      buildNumber: null == buildNumber
          ? _self.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [VersionInfo].
extension VersionInfoPatterns on VersionInfo {
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
    TResult Function(_VersionInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VersionInfo() when $default != null:
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
    TResult Function(_VersionInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionInfo():
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
    TResult? Function(_VersionInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionInfo() when $default != null:
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
    TResult Function(String fullVersion, String cleanVersion, int major,
            int minor, int patch, int buildNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VersionInfo() when $default != null:
        return $default(_that.fullVersion, _that.cleanVersion, _that.major,
            _that.minor, _that.patch, _that.buildNumber);
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
    TResult Function(String fullVersion, String cleanVersion, int major,
            int minor, int patch, int buildNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionInfo():
        return $default(_that.fullVersion, _that.cleanVersion, _that.major,
            _that.minor, _that.patch, _that.buildNumber);
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
    TResult? Function(String fullVersion, String cleanVersion, int major,
            int minor, int patch, int buildNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionInfo() when $default != null:
        return $default(_that.fullVersion, _that.cleanVersion, _that.major,
            _that.minor, _that.patch, _that.buildNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VersionInfo implements VersionInfo {
  const _VersionInfo(
      {required this.fullVersion,
      required this.cleanVersion,
      this.major = 0,
      this.minor = 0,
      this.patch = 0,
      this.buildNumber = 0});
  factory _VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoFromJson(json);

  @override
  final String fullVersion;
  @override
  final String cleanVersion;
  @override
  @JsonKey()
  final int major;
  @override
  @JsonKey()
  final int minor;
  @override
  @JsonKey()
  final int patch;
  @override
  @JsonKey()
  final int buildNumber;

  /// Create a copy of VersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VersionInfoCopyWith<_VersionInfo> get copyWith =>
      __$VersionInfoCopyWithImpl<_VersionInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VersionInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionInfo &&
            (identical(other.fullVersion, fullVersion) ||
                other.fullVersion == fullVersion) &&
            (identical(other.cleanVersion, cleanVersion) ||
                other.cleanVersion == cleanVersion) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullVersion, cleanVersion, major, minor, patch, buildNumber);

  @override
  String toString() {
    return 'VersionInfo(fullVersion: $fullVersion, cleanVersion: $cleanVersion, major: $major, minor: $minor, patch: $patch, buildNumber: $buildNumber)';
  }
}

/// @nodoc
abstract mixin class _$VersionInfoCopyWith<$Res>
    implements $VersionInfoCopyWith<$Res> {
  factory _$VersionInfoCopyWith(
          _VersionInfo value, $Res Function(_VersionInfo) _then) =
      __$VersionInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String fullVersion,
      String cleanVersion,
      int major,
      int minor,
      int patch,
      int buildNumber});
}

/// @nodoc
class __$VersionInfoCopyWithImpl<$Res> implements _$VersionInfoCopyWith<$Res> {
  __$VersionInfoCopyWithImpl(this._self, this._then);

  final _VersionInfo _self;
  final $Res Function(_VersionInfo) _then;

  /// Create a copy of VersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullVersion = null,
    Object? cleanVersion = null,
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? buildNumber = null,
  }) {
    return _then(_VersionInfo(
      fullVersion: null == fullVersion
          ? _self.fullVersion
          : fullVersion // ignore: cast_nullable_to_non_nullable
              as String,
      cleanVersion: null == cleanVersion
          ? _self.cleanVersion
          : cleanVersion // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _self.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
      buildNumber: null == buildNumber
          ? _self.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
