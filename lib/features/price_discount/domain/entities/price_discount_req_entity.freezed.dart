// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_discount_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PriceDiscountReqEntity {

 PriceDiscountEntity? get priceDiscount; GenericFormzInput<int>? get customerId; GenericFormzInput<int>? get productId; GenericFormzInput<double>? get priceDiscountAmount;
/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceDiscountReqEntityCopyWith<PriceDiscountReqEntity> get copyWith => _$PriceDiscountReqEntityCopyWithImpl<PriceDiscountReqEntity>(this as PriceDiscountReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceDiscountReqEntity&&(identical(other.priceDiscount, priceDiscount) || other.priceDiscount == priceDiscount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.priceDiscountAmount, priceDiscountAmount) || other.priceDiscountAmount == priceDiscountAmount));
}


@override
int get hashCode => Object.hash(runtimeType,priceDiscount,customerId,productId,priceDiscountAmount);

@override
String toString() {
  return 'PriceDiscountReqEntity(priceDiscount: $priceDiscount, customerId: $customerId, productId: $productId, priceDiscountAmount: $priceDiscountAmount)';
}


}

/// @nodoc
abstract mixin class $PriceDiscountReqEntityCopyWith<$Res>  {
  factory $PriceDiscountReqEntityCopyWith(PriceDiscountReqEntity value, $Res Function(PriceDiscountReqEntity) _then) = _$PriceDiscountReqEntityCopyWithImpl;
@useResult
$Res call({
 PriceDiscountEntity? priceDiscount, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<double>? priceDiscountAmount
});


$PriceDiscountEntityCopyWith<$Res>? get priceDiscount;

}
/// @nodoc
class _$PriceDiscountReqEntityCopyWithImpl<$Res>
    implements $PriceDiscountReqEntityCopyWith<$Res> {
  _$PriceDiscountReqEntityCopyWithImpl(this._self, this._then);

  final PriceDiscountReqEntity _self;
  final $Res Function(PriceDiscountReqEntity) _then;

/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? priceDiscount = freezed,Object? customerId = freezed,Object? productId = freezed,Object? priceDiscountAmount = freezed,}) {
  return _then(_self.copyWith(
priceDiscount: freezed == priceDiscount ? _self.priceDiscount : priceDiscount // ignore: cast_nullable_to_non_nullable
as PriceDiscountEntity?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,priceDiscountAmount: freezed == priceDiscountAmount ? _self.priceDiscountAmount : priceDiscountAmount // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,
  ));
}
/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceDiscountEntityCopyWith<$Res>? get priceDiscount {
    if (_self.priceDiscount == null) {
    return null;
  }

  return $PriceDiscountEntityCopyWith<$Res>(_self.priceDiscount!, (value) {
    return _then(_self.copyWith(priceDiscount: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceDiscountReqEntity].
extension PriceDiscountReqEntityPatterns on PriceDiscountReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceDiscountReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceDiscountReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceDiscountReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceDiscountReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PriceDiscountReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PriceDiscountEntity? priceDiscount,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<double>? priceDiscountAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceDiscountReqEntity() when $default != null:
return $default(_that.priceDiscount,_that.customerId,_that.productId,_that.priceDiscountAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PriceDiscountEntity? priceDiscount,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<double>? priceDiscountAmount)  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountReqEntity():
return $default(_that.priceDiscount,_that.customerId,_that.productId,_that.priceDiscountAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PriceDiscountEntity? priceDiscount,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<double>? priceDiscountAmount)?  $default,) {final _that = this;
switch (_that) {
case _PriceDiscountReqEntity() when $default != null:
return $default(_that.priceDiscount,_that.customerId,_that.productId,_that.priceDiscountAmount);case _:
  return null;

}
}

}

/// @nodoc


class _PriceDiscountReqEntity extends PriceDiscountReqEntity {
  const _PriceDiscountReqEntity({required this.priceDiscount, required this.customerId, required this.productId, this.priceDiscountAmount}): super._();
  

@override final  PriceDiscountEntity? priceDiscount;
@override final  GenericFormzInput<int>? customerId;
@override final  GenericFormzInput<int>? productId;
@override final  GenericFormzInput<double>? priceDiscountAmount;

/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceDiscountReqEntityCopyWith<_PriceDiscountReqEntity> get copyWith => __$PriceDiscountReqEntityCopyWithImpl<_PriceDiscountReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceDiscountReqEntity&&(identical(other.priceDiscount, priceDiscount) || other.priceDiscount == priceDiscount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.priceDiscountAmount, priceDiscountAmount) || other.priceDiscountAmount == priceDiscountAmount));
}


@override
int get hashCode => Object.hash(runtimeType,priceDiscount,customerId,productId,priceDiscountAmount);

@override
String toString() {
  return 'PriceDiscountReqEntity(priceDiscount: $priceDiscount, customerId: $customerId, productId: $productId, priceDiscountAmount: $priceDiscountAmount)';
}


}

/// @nodoc
abstract mixin class _$PriceDiscountReqEntityCopyWith<$Res> implements $PriceDiscountReqEntityCopyWith<$Res> {
  factory _$PriceDiscountReqEntityCopyWith(_PriceDiscountReqEntity value, $Res Function(_PriceDiscountReqEntity) _then) = __$PriceDiscountReqEntityCopyWithImpl;
@override @useResult
$Res call({
 PriceDiscountEntity? priceDiscount, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<double>? priceDiscountAmount
});


@override $PriceDiscountEntityCopyWith<$Res>? get priceDiscount;

}
/// @nodoc
class __$PriceDiscountReqEntityCopyWithImpl<$Res>
    implements _$PriceDiscountReqEntityCopyWith<$Res> {
  __$PriceDiscountReqEntityCopyWithImpl(this._self, this._then);

  final _PriceDiscountReqEntity _self;
  final $Res Function(_PriceDiscountReqEntity) _then;

/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? priceDiscount = freezed,Object? customerId = freezed,Object? productId = freezed,Object? priceDiscountAmount = freezed,}) {
  return _then(_PriceDiscountReqEntity(
priceDiscount: freezed == priceDiscount ? _self.priceDiscount : priceDiscount // ignore: cast_nullable_to_non_nullable
as PriceDiscountEntity?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,priceDiscountAmount: freezed == priceDiscountAmount ? _self.priceDiscountAmount : priceDiscountAmount // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,
  ));
}

/// Create a copy of PriceDiscountReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceDiscountEntityCopyWith<$Res>? get priceDiscount {
    if (_self.priceDiscount == null) {
    return null;
  }

  return $PriceDiscountEntityCopyWith<$Res>(_self.priceDiscount!, (value) {
    return _then(_self.copyWith(priceDiscount: value));
  });
}
}

// dart format on
