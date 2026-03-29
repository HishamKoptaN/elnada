// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirebaseRelease {
  String get id;
  String get version;
  String get buildVersion;
  DateTime get createTime;
  String? get displayVersion;
  String? get releaseNotes;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseReleaseCopyWith<FirebaseRelease> get copyWith =>
      _$FirebaseReleaseCopyWithImpl<FirebaseRelease>(
          this as FirebaseRelease, _$identity);

  /// Serializes this FirebaseRelease to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseRelease &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildVersion, buildVersion) ||
                other.buildVersion == buildVersion) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.displayVersion, displayVersion) ||
                other.displayVersion == displayVersion) &&
            (identical(other.releaseNotes, releaseNotes) ||
                other.releaseNotes == releaseNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, buildVersion,
      createTime, displayVersion, releaseNotes);

  @override
  String toString() {
    return 'FirebaseRelease(id: $id, version: $version, buildVersion: $buildVersion, createTime: $createTime, displayVersion: $displayVersion, releaseNotes: $releaseNotes)';
  }
}

/// @nodoc
abstract mixin class $FirebaseReleaseCopyWith<$Res> {
  factory $FirebaseReleaseCopyWith(
          FirebaseRelease value, $Res Function(FirebaseRelease) _then) =
      _$FirebaseReleaseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String version,
      String buildVersion,
      DateTime createTime,
      String? displayVersion,
      String? releaseNotes});
}

/// @nodoc
class _$FirebaseReleaseCopyWithImpl<$Res>
    implements $FirebaseReleaseCopyWith<$Res> {
  _$FirebaseReleaseCopyWithImpl(this._self, this._then);

  final FirebaseRelease _self;
  final $Res Function(FirebaseRelease) _then;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? buildVersion = null,
    Object? createTime = null,
    Object? displayVersion = freezed,
    Object? releaseNotes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildVersion: null == buildVersion
          ? _self.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayVersion: freezed == displayVersion
          ? _self.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseNotes: freezed == releaseNotes
          ? _self.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FirebaseRelease].
extension FirebaseReleasePatterns on FirebaseRelease {
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
    TResult Function(_FirebaseRelease value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease() when $default != null:
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
    TResult Function(_FirebaseRelease value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease():
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
    TResult? Function(_FirebaseRelease value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease() when $default != null:
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
    TResult Function(String id, String version, String buildVersion,
            DateTime createTime, String? displayVersion, String? releaseNotes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease() when $default != null:
        return $default(_that.id, _that.version, _that.buildVersion,
            _that.createTime, _that.displayVersion, _that.releaseNotes);
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
    TResult Function(String id, String version, String buildVersion,
            DateTime createTime, String? displayVersion, String? releaseNotes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease():
        return $default(_that.id, _that.version, _that.buildVersion,
            _that.createTime, _that.displayVersion, _that.releaseNotes);
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
    TResult? Function(String id, String version, String buildVersion,
            DateTime createTime, String? displayVersion, String? releaseNotes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FirebaseRelease() when $default != null:
        return $default(_that.id, _that.version, _that.buildVersion,
            _that.createTime, _that.displayVersion, _that.releaseNotes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FirebaseRelease implements FirebaseRelease {
  const _FirebaseRelease(
      {required this.id,
      required this.version,
      required this.buildVersion,
      required this.createTime,
      this.displayVersion,
      this.releaseNotes});
  factory _FirebaseRelease.fromJson(Map<String, dynamic> json) =>
      _$FirebaseReleaseFromJson(json);

  @override
  final String id;
  @override
  final String version;
  @override
  final String buildVersion;
  @override
  final DateTime createTime;
  @override
  final String? displayVersion;
  @override
  final String? releaseNotes;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirebaseReleaseCopyWith<_FirebaseRelease> get copyWith =>
      __$FirebaseReleaseCopyWithImpl<_FirebaseRelease>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirebaseReleaseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseRelease &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildVersion, buildVersion) ||
                other.buildVersion == buildVersion) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.displayVersion, displayVersion) ||
                other.displayVersion == displayVersion) &&
            (identical(other.releaseNotes, releaseNotes) ||
                other.releaseNotes == releaseNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, buildVersion,
      createTime, displayVersion, releaseNotes);

  @override
  String toString() {
    return 'FirebaseRelease(id: $id, version: $version, buildVersion: $buildVersion, createTime: $createTime, displayVersion: $displayVersion, releaseNotes: $releaseNotes)';
  }
}

/// @nodoc
abstract mixin class _$FirebaseReleaseCopyWith<$Res>
    implements $FirebaseReleaseCopyWith<$Res> {
  factory _$FirebaseReleaseCopyWith(
          _FirebaseRelease value, $Res Function(_FirebaseRelease) _then) =
      __$FirebaseReleaseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String version,
      String buildVersion,
      DateTime createTime,
      String? displayVersion,
      String? releaseNotes});
}

/// @nodoc
class __$FirebaseReleaseCopyWithImpl<$Res>
    implements _$FirebaseReleaseCopyWith<$Res> {
  __$FirebaseReleaseCopyWithImpl(this._self, this._then);

  final _FirebaseRelease _self;
  final $Res Function(_FirebaseRelease) _then;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? buildVersion = null,
    Object? createTime = null,
    Object? displayVersion = freezed,
    Object? releaseNotes = freezed,
  }) {
    return _then(_FirebaseRelease(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildVersion: null == buildVersion
          ? _self.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayVersion: freezed == displayVersion
          ? _self.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseNotes: freezed == releaseNotes
          ? _self.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
