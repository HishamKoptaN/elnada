// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceDiscountModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'product') ProductModel? get product;@JsonKey(name: 'discount_value') int? get discountValue;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceDiscountModelCopyWith<PriceDiscountModel> get copyWith => _$PriceDiscountModelCopyWithImpl<PriceDiscountModel>(this as PriceDiscountModel, _$identity);

  /// Serializes this PriceDiscountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceDiscountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,discountValue,createdAt);

@override
String toString() {
  return 'PriceDiscountModel(id: $id, product: $product, discountValue: $discountValue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PriceDiscountModelCopyWith<$Res>  {
  factory $PriceDiscountModelCopyWith(PriceDiscountModel value, $Res Function(PriceDiscountModel) _then) = _$PriceDiscountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'discount_value') int? discountValue,@JsonKey(name: 'created_at') DateTime? createdAt
});


$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$PriceDiscountModelCopyWithImpl<$Res>
    implements $PriceDiscountModelCopyWith<$Res> {
  _$PriceDiscountModelCopyWithImpl(this._self, this._then);

  final PriceDiscountModel _self;
  final $Res Function(PriceDiscountModel) _then;

/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? product = freezed,Object? discountValue = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceDiscountModel].
extension PriceDiscountModelPatterns on PriceDiscountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceDiscountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceDiscountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceDiscountModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceDiscountModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'discount_value')  int? discountValue, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceDiscountModel() when $default != null:
return $default(_that.id,_that.product,_that.discountValue,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'discount_value')  int? discountValue, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountModel():
return $default(_that.id,_that.product,_that.discountValue,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'discount_value')  int? discountValue, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountModel() when $default != null:
return $default(_that.id,_that.product,_that.discountValue,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceDiscountModel implements PriceDiscountModel {
  const _PriceDiscountModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'product') this.product, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'created_at') this.createdAt});
  factory _PriceDiscountModel.fromJson(Map<String, dynamic> json) => _$PriceDiscountModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'product') final  ProductModel? product;
@override@JsonKey(name: 'discount_value') final  int? discountValue;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceDiscountModelCopyWith<_PriceDiscountModel> get copyWith => __$PriceDiscountModelCopyWithImpl<_PriceDiscountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceDiscountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceDiscountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,discountValue,createdAt);

@override
String toString() {
  return 'PriceDiscountModel(id: $id, product: $product, discountValue: $discountValue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PriceDiscountModelCopyWith<$Res> implements $PriceDiscountModelCopyWith<$Res> {
  factory _$PriceDiscountModelCopyWith(_PriceDiscountModel value, $Res Function(_PriceDiscountModel) _then) = __$PriceDiscountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'discount_value') int? discountValue,@JsonKey(name: 'created_at') DateTime? createdAt
});


@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$PriceDiscountModelCopyWithImpl<$Res>
    implements _$PriceDiscountModelCopyWith<$Res> {
  __$PriceDiscountModelCopyWithImpl(this._self, this._then);

  final _PriceDiscountModel _self;
  final $Res Function(_PriceDiscountModel) _then;

/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? product = freezed,Object? discountValue = freezed,Object? createdAt = freezed,}) {
  return _then(_PriceDiscountModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PriceDiscountModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
