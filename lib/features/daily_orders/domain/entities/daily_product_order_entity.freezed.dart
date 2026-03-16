// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_product_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyProductOrderEntity {

@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'total_count') int? get totalCount;
/// Create a copy of DailyProductOrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyProductOrderEntityCopyWith<DailyProductOrderEntity> get copyWith => _$DailyProductOrderEntityCopyWithImpl<DailyProductOrderEntity>(this as DailyProductOrderEntity, _$identity);

  /// Serializes this DailyProductOrderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyProductOrderEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalCount);

@override
String toString() {
  return 'DailyProductOrderEntity(productId: $productId, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $DailyProductOrderEntityCopyWith<$Res>  {
  factory $DailyProductOrderEntityCopyWith(DailyProductOrderEntity value, $Res Function(DailyProductOrderEntity) _then) = _$DailyProductOrderEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_count') int? totalCount
});




}
/// @nodoc
class _$DailyProductOrderEntityCopyWithImpl<$Res>
    implements $DailyProductOrderEntityCopyWith<$Res> {
  _$DailyProductOrderEntityCopyWithImpl(this._self, this._then);

  final DailyProductOrderEntity _self;
  final $Res Function(DailyProductOrderEntity) _then;

/// Create a copy of DailyProductOrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyProductOrderEntity].
extension DailyProductOrderEntityPatterns on DailyProductOrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyProductOrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyProductOrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyProductOrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyProductOrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyProductOrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyProductOrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_count')  int? totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyProductOrderEntity() when $default != null:
return $default(_that.productId,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_count')  int? totalCount)  $default,) {final _that = this;
switch (_that) {
case _DailyProductOrderEntity():
return $default(_that.productId,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_count')  int? totalCount)?  $default,) {final _that = this;
switch (_that) {
case _DailyProductOrderEntity() when $default != null:
return $default(_that.productId,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyProductOrderEntity implements DailyProductOrderEntity {
  const _DailyProductOrderEntity({@JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'total_count') this.totalCount});
  factory _DailyProductOrderEntity.fromJson(Map<String, dynamic> json) => _$DailyProductOrderEntityFromJson(json);

@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'total_count') final  int? totalCount;

/// Create a copy of DailyProductOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyProductOrderEntityCopyWith<_DailyProductOrderEntity> get copyWith => __$DailyProductOrderEntityCopyWithImpl<_DailyProductOrderEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyProductOrderEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyProductOrderEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalCount);

@override
String toString() {
  return 'DailyProductOrderEntity(productId: $productId, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$DailyProductOrderEntityCopyWith<$Res> implements $DailyProductOrderEntityCopyWith<$Res> {
  factory _$DailyProductOrderEntityCopyWith(_DailyProductOrderEntity value, $Res Function(_DailyProductOrderEntity) _then) = __$DailyProductOrderEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_count') int? totalCount
});




}
/// @nodoc
class __$DailyProductOrderEntityCopyWithImpl<$Res>
    implements _$DailyProductOrderEntityCopyWith<$Res> {
  __$DailyProductOrderEntityCopyWithImpl(this._self, this._then);

  final _DailyProductOrderEntity _self;
  final $Res Function(_DailyProductOrderEntity) _then;

/// Create a copy of DailyProductOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? totalCount = freezed,}) {
  return _then(_DailyProductOrderEntity(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
