// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseRelease _$FirebaseReleaseFromJson(Map<String, dynamic> json) {
  return _FirebaseRelease.fromJson(json);
}

/// @nodoc
mixin _$FirebaseRelease {
  String get id => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildVersion => throw _privateConstructorUsedError;
  DateTime get createTime => throw _privateConstructorUsedError;
  String? get displayVersion => throw _privateConstructorUsedError;
  String? get releaseNotes => throw _privateConstructorUsedError;

  /// Serializes this FirebaseRelease to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseReleaseCopyWith<FirebaseRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseReleaseCopyWith<$Res> {
  factory $FirebaseReleaseCopyWith(
          FirebaseRelease value, $Res Function(FirebaseRelease) then) =
      _$FirebaseReleaseCopyWithImpl<$Res, FirebaseRelease>;
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
class _$FirebaseReleaseCopyWithImpl<$Res, $Val extends FirebaseRelease>
    implements $FirebaseReleaseCopyWith<$Res> {
  _$FirebaseReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildVersion: null == buildVersion
          ? _value.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayVersion: freezed == displayVersion
          ? _value.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseReleaseImplCopyWith<$Res>
    implements $FirebaseReleaseCopyWith<$Res> {
  factory _$$FirebaseReleaseImplCopyWith(_$FirebaseReleaseImpl value,
          $Res Function(_$FirebaseReleaseImpl) then) =
      __$$FirebaseReleaseImplCopyWithImpl<$Res>;
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
class __$$FirebaseReleaseImplCopyWithImpl<$Res>
    extends _$FirebaseReleaseCopyWithImpl<$Res, _$FirebaseReleaseImpl>
    implements _$$FirebaseReleaseImplCopyWith<$Res> {
  __$$FirebaseReleaseImplCopyWithImpl(
      _$FirebaseReleaseImpl _value, $Res Function(_$FirebaseReleaseImpl) _then)
      : super(_value, _then);

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
    return _then(_$FirebaseReleaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildVersion: null == buildVersion
          ? _value.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayVersion: freezed == displayVersion
          ? _value.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseReleaseImpl implements _FirebaseRelease {
  const _$FirebaseReleaseImpl(
      {required this.id,
      required this.version,
      required this.buildVersion,
      required this.createTime,
      this.displayVersion,
      this.releaseNotes});

  factory _$FirebaseReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseReleaseImplFromJson(json);

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

  @override
  String toString() {
    return 'FirebaseRelease(id: $id, version: $version, buildVersion: $buildVersion, createTime: $createTime, displayVersion: $displayVersion, releaseNotes: $releaseNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseReleaseImpl &&
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

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseReleaseImplCopyWith<_$FirebaseReleaseImpl> get copyWith =>
      __$$FirebaseReleaseImplCopyWithImpl<_$FirebaseReleaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseReleaseImplToJson(
      this,
    );
  }
}

abstract class _FirebaseRelease implements FirebaseRelease {
  const factory _FirebaseRelease(
      {required final String id,
      required final String version,
      required final String buildVersion,
      required final DateTime createTime,
      final String? displayVersion,
      final String? releaseNotes}) = _$FirebaseReleaseImpl;

  factory _FirebaseRelease.fromJson(Map<String, dynamic> json) =
      _$FirebaseReleaseImpl.fromJson;

  @override
  String get id;
  @override
  String get version;
  @override
  String get buildVersion;
  @override
  DateTime get createTime;
  @override
  String? get displayVersion;
  @override
  String? get releaseNotes;

  /// Create a copy of FirebaseRelease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseReleaseImplCopyWith<_$FirebaseReleaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
