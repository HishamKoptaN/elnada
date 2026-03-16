// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_discount_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceDiscountEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'discountValue') String? get discountValue;@JsonKey(name: 'product') ProductEntity? get product;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceDiscountEntityCopyWith<PriceDiscountEntity> get copyWith => _$PriceDiscountEntityCopyWithImpl<PriceDiscountEntity>(this as PriceDiscountEntity, _$identity);

  /// Serializes this PriceDiscountEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceDiscountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.product, product) || other.product == product)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,discountValue,product,createdAt);

@override
String toString() {
  return 'PriceDiscountEntity(id: $id, discountValue: $discountValue, product: $product, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PriceDiscountEntityCopyWith<$Res>  {
  factory $PriceDiscountEntityCopyWith(PriceDiscountEntity value, $Res Function(PriceDiscountEntity) _then) = _$PriceDiscountEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'discountValue') String? discountValue,@JsonKey(name: 'product') ProductEntity? product,@JsonKey(name: 'created_at') String? createdAt
});


$ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class _$PriceDiscountEntityCopyWithImpl<$Res>
    implements $PriceDiscountEntityCopyWith<$Res> {
  _$PriceDiscountEntityCopyWithImpl(this._self, this._then);

  final PriceDiscountEntity _self;
  final $Res Function(PriceDiscountEntity) _then;

/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? discountValue = freezed,Object? product = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceDiscountEntity].
extension PriceDiscountEntityPatterns on PriceDiscountEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceDiscountEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceDiscountEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceDiscountEntity value)  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceDiscountEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'discountValue')  String? discountValue, @JsonKey(name: 'product')  ProductEntity? product, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceDiscountEntity() when $default != null:
return $default(_that.id,_that.discountValue,_that.product,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'discountValue')  String? discountValue, @JsonKey(name: 'product')  ProductEntity? product, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountEntity():
return $default(_that.id,_that.discountValue,_that.product,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'discountValue')  String? discountValue, @JsonKey(name: 'product')  ProductEntity? product, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountEntity() when $default != null:
return $default(_that.id,_that.discountValue,_that.product,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceDiscountEntity implements PriceDiscountEntity {
  const _PriceDiscountEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'discountValue') this.discountValue, @JsonKey(name: 'product') this.product, @JsonKey(name: 'created_at') this.createdAt});
  factory _PriceDiscountEntity.fromJson(Map<String, dynamic> json) => _$PriceDiscountEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'discountValue') final  String? discountValue;
@override@JsonKey(name: 'product') final  ProductEntity? product;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceDiscountEntityCopyWith<_PriceDiscountEntity> get copyWith => __$PriceDiscountEntityCopyWithImpl<_PriceDiscountEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceDiscountEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceDiscountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.product, product) || other.product == product)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,discountValue,product,createdAt);

@override
String toString() {
  return 'PriceDiscountEntity(id: $id, discountValue: $discountValue, product: $product, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PriceDiscountEntityCopyWith<$Res> implements $PriceDiscountEntityCopyWith<$Res> {
  factory _$PriceDiscountEntityCopyWith(_PriceDiscountEntity value, $Res Function(_PriceDiscountEntity) _then) = __$PriceDiscountEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'discountValue') String? discountValue,@JsonKey(name: 'product') ProductEntity? product,@JsonKey(name: 'created_at') String? createdAt
});


@override $ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class __$PriceDiscountEntityCopyWithImpl<$Res>
    implements _$PriceDiscountEntityCopyWith<$Res> {
  __$PriceDiscountEntityCopyWithImpl(this._self, this._then);

  final _PriceDiscountEntity _self;
  final $Res Function(_PriceDiscountEntity) _then;

/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? discountValue = freezed,Object? product = freezed,Object? createdAt = freezed,}) {
  return _then(_PriceDiscountEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PriceDiscountEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
