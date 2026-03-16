// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_collection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyCollectionEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of DailyCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyCollectionEntityCopyWith<DailyCollectionEntity> get copyWith => _$DailyCollectionEntityCopyWithImpl<DailyCollectionEntity>(this as DailyCollectionEntity, _$identity);

  /// Serializes this DailyCollectionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyCollectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,createdAt);

@override
String toString() {
  return 'DailyCollectionEntity(id: $id, amount: $amount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DailyCollectionEntityCopyWith<$Res>  {
  factory $DailyCollectionEntityCopyWith(DailyCollectionEntity value, $Res Function(DailyCollectionEntity) _then) = _$DailyCollectionEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$DailyCollectionEntityCopyWithImpl<$Res>
    implements $DailyCollectionEntityCopyWith<$Res> {
  _$DailyCollectionEntityCopyWithImpl(this._self, this._then);

  final DailyCollectionEntity _self;
  final $Res Function(DailyCollectionEntity) _then;

/// Create a copy of DailyCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyCollectionEntity].
extension DailyCollectionEntityPatterns on DailyCollectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyCollectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyCollectionEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyCollectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyCollectionEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyCollectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyCollectionEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyCollectionEntity() when $default != null:
return $default(_that.id,_that.amount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DailyCollectionEntity():
return $default(_that.id,_that.amount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyCollectionEntity() when $default != null:
return $default(_that.id,_that.amount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyCollectionEntity implements DailyCollectionEntity {
  const _DailyCollectionEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'created_at') this.createdAt});
  factory _DailyCollectionEntity.fromJson(Map<String, dynamic> json) => _$DailyCollectionEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of DailyCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyCollectionEntityCopyWith<_DailyCollectionEntity> get copyWith => __$DailyCollectionEntityCopyWithImpl<_DailyCollectionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyCollectionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyCollectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,createdAt);

@override
String toString() {
  return 'DailyCollectionEntity(id: $id, amount: $amount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DailyCollectionEntityCopyWith<$Res> implements $DailyCollectionEntityCopyWith<$Res> {
  factory _$DailyCollectionEntityCopyWith(_DailyCollectionEntity value, $Res Function(_DailyCollectionEntity) _then) = __$DailyCollectionEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$DailyCollectionEntityCopyWithImpl<$Res>
    implements _$DailyCollectionEntityCopyWith<$Res> {
  __$DailyCollectionEntityCopyWithImpl(this._self, this._then);

  final _DailyCollectionEntity _self;
  final $Res Function(_DailyCollectionEntity) _then;

/// Create a copy of DailyCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,Object? createdAt = freezed,}) {
  return _then(_DailyCollectionEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
