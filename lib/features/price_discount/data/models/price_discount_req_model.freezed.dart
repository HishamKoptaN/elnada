// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_discount_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceDiscountReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'discount_value') double get discountValue;
/// Create a copy of PriceDiscountReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceDiscountReqModelCopyWith<PriceDiscountReqModel> get copyWith => _$PriceDiscountReqModelCopyWithImpl<PriceDiscountReqModel>(this as PriceDiscountReqModel, _$identity);

  /// Serializes this PriceDiscountReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceDiscountReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,discountValue);

@override
String toString() {
  return 'PriceDiscountReqModel(customerId: $customerId, productId: $productId, discountValue: $discountValue)';
}


}

/// @nodoc
abstract mixin class $PriceDiscountReqModelCopyWith<$Res>  {
  factory $PriceDiscountReqModelCopyWith(PriceDiscountReqModel value, $Res Function(PriceDiscountReqModel) _then) = _$PriceDiscountReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'discount_value') double discountValue
});




}
/// @nodoc
class _$PriceDiscountReqModelCopyWithImpl<$Res>
    implements $PriceDiscountReqModelCopyWith<$Res> {
  _$PriceDiscountReqModelCopyWithImpl(this._self, this._then);

  final PriceDiscountReqModel _self;
  final $Res Function(PriceDiscountReqModel) _then;

/// Create a copy of PriceDiscountReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? productId = null,Object? discountValue = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,discountValue: null == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceDiscountReqModel].
extension PriceDiscountReqModelPatterns on PriceDiscountReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceDiscountReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceDiscountReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceDiscountReqModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceDiscountReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'discount_value')  double discountValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceDiscountReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.discountValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'discount_value')  double discountValue)  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountReqModel():
return $default(_that.customerId,_that.productId,_that.discountValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'discount_value')  double discountValue)?  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.discountValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceDiscountReqModel implements PriceDiscountReqModel {
  const _PriceDiscountReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'discount_value') required this.discountValue});
  factory _PriceDiscountReqModel.fromJson(Map<String, dynamic> json) => _$PriceDiscountReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'discount_value') final  double discountValue;

/// Create a copy of PriceDiscountReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceDiscountReqModelCopyWith<_PriceDiscountReqModel> get copyWith => __$PriceDiscountReqModelCopyWithImpl<_PriceDiscountReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceDiscountReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceDiscountReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,discountValue);

@override
String toString() {
  return 'PriceDiscountReqModel(customerId: $customerId, productId: $productId, discountValue: $discountValue)';
}


}

/// @nodoc
abstract mixin class _$PriceDiscountReqModelCopyWith<$Res> implements $PriceDiscountReqModelCopyWith<$Res> {
  factory _$PriceDiscountReqModelCopyWith(_PriceDiscountReqModel value, $Res Function(_PriceDiscountReqModel) _then) = __$PriceDiscountReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'discount_value') double discountValue
});




}
/// @nodoc
class __$PriceDiscountReqModelCopyWithImpl<$Res>
    implements _$PriceDiscountReqModelCopyWith<$Res> {
  __$PriceDiscountReqModelCopyWithImpl(this._self, this._then);

  final _PriceDiscountReqModel _self;
  final $Res Function(_PriceDiscountReqModel) _then;

/// Create a copy of PriceDiscountReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? productId = null,Object? discountValue = null,}) {
  return _then(_PriceDiscountReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,discountValue: null == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
