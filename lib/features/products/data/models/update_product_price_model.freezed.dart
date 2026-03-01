// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductPriceReqModel {

@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'price') double get price;
/// Create a copy of UpdateProductPriceReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductPriceReqModelCopyWith<UpdateProductPriceReqModel> get copyWith => _$UpdateProductPriceReqModelCopyWithImpl<UpdateProductPriceReqModel>(this as UpdateProductPriceReqModel, _$identity);

  /// Serializes this UpdateProductPriceReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductPriceReqModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,price);

@override
String toString() {
  return 'UpdateProductPriceReqModel(productId: $productId, price: $price)';
}


}

/// @nodoc
abstract mixin class $UpdateProductPriceReqModelCopyWith<$Res>  {
  factory $UpdateProductPriceReqModelCopyWith(UpdateProductPriceReqModel value, $Res Function(UpdateProductPriceReqModel) _then) = _$UpdateProductPriceReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'price') double price
});




}
/// @nodoc
class _$UpdateProductPriceReqModelCopyWithImpl<$Res>
    implements $UpdateProductPriceReqModelCopyWith<$Res> {
  _$UpdateProductPriceReqModelCopyWithImpl(this._self, this._then);

  final UpdateProductPriceReqModel _self;
  final $Res Function(UpdateProductPriceReqModel) _then;

/// Create a copy of UpdateProductPriceReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? price = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductPriceReqModel].
extension UpdateProductPriceReqModelPatterns on UpdateProductPriceReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductPriceReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductPriceReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductPriceReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'price')  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel() when $default != null:
return $default(_that.productId,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'price')  double price)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel():
return $default(_that.productId,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'price')  double price)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductPriceReqModel() when $default != null:
return $default(_that.productId,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProductPriceReqModel implements UpdateProductPriceReqModel {
  const _UpdateProductPriceReqModel({@JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'price') required this.price});
  factory _UpdateProductPriceReqModel.fromJson(Map<String, dynamic> json) => _$UpdateProductPriceReqModelFromJson(json);

@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'price') final  double price;

/// Create a copy of UpdateProductPriceReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductPriceReqModelCopyWith<_UpdateProductPriceReqModel> get copyWith => __$UpdateProductPriceReqModelCopyWithImpl<_UpdateProductPriceReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductPriceReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductPriceReqModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,price);

@override
String toString() {
  return 'UpdateProductPriceReqModel(productId: $productId, price: $price)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductPriceReqModelCopyWith<$Res> implements $UpdateProductPriceReqModelCopyWith<$Res> {
  factory _$UpdateProductPriceReqModelCopyWith(_UpdateProductPriceReqModel value, $Res Function(_UpdateProductPriceReqModel) _then) = __$UpdateProductPriceReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'price') double price
});




}
/// @nodoc
class __$UpdateProductPriceReqModelCopyWithImpl<$Res>
    implements _$UpdateProductPriceReqModelCopyWith<$Res> {
  __$UpdateProductPriceReqModelCopyWithImpl(this._self, this._then);

  final _UpdateProductPriceReqModel _self;
  final $Res Function(_UpdateProductPriceReqModel) _then;

/// Create a copy of UpdateProductPriceReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? price = null,}) {
  return _then(_UpdateProductPriceReqModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
