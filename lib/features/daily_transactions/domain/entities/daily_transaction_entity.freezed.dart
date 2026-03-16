// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyTransactionEntity {

 int? get id; String? get totalAmount; List<TransactionDetailEntity>? get details; String? get createdAt;
/// Create a copy of DailyTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyTransactionEntityCopyWith<DailyTransactionEntity> get copyWith => _$DailyTransactionEntityCopyWithImpl<DailyTransactionEntity>(this as DailyTransactionEntity, _$identity);

  /// Serializes this DailyTransactionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,const DeepCollectionEquality().hash(details),createdAt);

@override
String toString() {
  return 'DailyTransactionEntity(id: $id, totalAmount: $totalAmount, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DailyTransactionEntityCopyWith<$Res>  {
  factory $DailyTransactionEntityCopyWith(DailyTransactionEntity value, $Res Function(DailyTransactionEntity) _then) = _$DailyTransactionEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? totalAmount, List<TransactionDetailEntity>? details, String? createdAt
});




}
/// @nodoc
class _$DailyTransactionEntityCopyWithImpl<$Res>
    implements $DailyTransactionEntityCopyWith<$Res> {
  _$DailyTransactionEntityCopyWithImpl(this._self, this._then);

  final DailyTransactionEntity _self;
  final $Res Function(DailyTransactionEntity) _then;

/// Create a copy of DailyTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? totalAmount = freezed,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<TransactionDetailEntity>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyTransactionEntity].
extension DailyTransactionEntityPatterns on DailyTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _DailyTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DailyTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? totalAmount,  List<TransactionDetailEntity>? details,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyTransactionEntity() when $default != null:
return $default(_that.id,_that.totalAmount,_that.details,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? totalAmount,  List<TransactionDetailEntity>? details,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DailyTransactionEntity():
return $default(_that.id,_that.totalAmount,_that.details,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? totalAmount,  List<TransactionDetailEntity>? details,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyTransactionEntity() when $default != null:
return $default(_that.id,_that.totalAmount,_that.details,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyTransactionEntity implements DailyTransactionEntity {
  const _DailyTransactionEntity({this.id, this.totalAmount, final  List<TransactionDetailEntity>? details, this.createdAt}): _details = details;
  factory _DailyTransactionEntity.fromJson(Map<String, dynamic> json) => _$DailyTransactionEntityFromJson(json);

@override final  int? id;
@override final  String? totalAmount;
 final  List<TransactionDetailEntity>? _details;
@override List<TransactionDetailEntity>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? createdAt;

/// Create a copy of DailyTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyTransactionEntityCopyWith<_DailyTransactionEntity> get copyWith => __$DailyTransactionEntityCopyWithImpl<_DailyTransactionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyTransactionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other._details, _details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,const DeepCollectionEquality().hash(_details),createdAt);

@override
String toString() {
  return 'DailyTransactionEntity(id: $id, totalAmount: $totalAmount, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DailyTransactionEntityCopyWith<$Res> implements $DailyTransactionEntityCopyWith<$Res> {
  factory _$DailyTransactionEntityCopyWith(_DailyTransactionEntity value, $Res Function(_DailyTransactionEntity) _then) = __$DailyTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? totalAmount, List<TransactionDetailEntity>? details, String? createdAt
});




}
/// @nodoc
class __$DailyTransactionEntityCopyWithImpl<$Res>
    implements _$DailyTransactionEntityCopyWith<$Res> {
  __$DailyTransactionEntityCopyWithImpl(this._self, this._then);

  final _DailyTransactionEntity _self;
  final $Res Function(_DailyTransactionEntity) _then;

/// Create a copy of DailyTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? totalAmount = freezed,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_DailyTransactionEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<TransactionDetailEntity>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransactionDetailEntity {

 int? get id; ProductModel? get product; String? get weight; String? get cage; String? get priceAtTime; String? get discount; String? get total;
/// Create a copy of TransactionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailEntityCopyWith<TransactionDetailEntity> get copyWith => _$TransactionDetailEntityCopyWithImpl<TransactionDetailEntity>(this as TransactionDetailEntity, _$identity);

  /// Serializes this TransactionDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.priceAtTime, priceAtTime) || other.priceAtTime == priceAtTime)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,weight,cage,priceAtTime,discount,total);

@override
String toString() {
  return 'TransactionDetailEntity(id: $id, product: $product, weight: $weight, cage: $cage, priceAtTime: $priceAtTime, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailEntityCopyWith<$Res>  {
  factory $TransactionDetailEntityCopyWith(TransactionDetailEntity value, $Res Function(TransactionDetailEntity) _then) = _$TransactionDetailEntityCopyWithImpl;
@useResult
$Res call({
 int? id, ProductModel? product, String? weight, String? cage, String? priceAtTime, String? discount, String? total
});


$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$TransactionDetailEntityCopyWithImpl<$Res>
    implements $TransactionDetailEntityCopyWith<$Res> {
  _$TransactionDetailEntityCopyWithImpl(this._self, this._then);

  final TransactionDetailEntity _self;
  final $Res Function(TransactionDetailEntity) _then;

/// Create a copy of TransactionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? product = freezed,Object? weight = freezed,Object? cage = freezed,Object? priceAtTime = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,cage: freezed == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as String?,priceAtTime: freezed == priceAtTime ? _self.priceAtTime : priceAtTime // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TransactionDetailEntity
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


/// Adds pattern-matching-related methods to [TransactionDetailEntity].
extension TransactionDetailEntityPatterns on TransactionDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  ProductModel? product,  String? weight,  String? cage,  String? priceAtTime,  String? discount,  String? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDetailEntity() when $default != null:
return $default(_that.id,_that.product,_that.weight,_that.cage,_that.priceAtTime,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  ProductModel? product,  String? weight,  String? cage,  String? priceAtTime,  String? discount,  String? total)  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailEntity():
return $default(_that.id,_that.product,_that.weight,_that.cage,_that.priceAtTime,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  ProductModel? product,  String? weight,  String? cage,  String? priceAtTime,  String? discount,  String? total)?  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailEntity() when $default != null:
return $default(_that.id,_that.product,_that.weight,_that.cage,_that.priceAtTime,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionDetailEntity implements TransactionDetailEntity {
  const _TransactionDetailEntity({this.id, this.product, this.weight, this.cage, this.priceAtTime, this.discount, this.total});
  factory _TransactionDetailEntity.fromJson(Map<String, dynamic> json) => _$TransactionDetailEntityFromJson(json);

@override final  int? id;
@override final  ProductModel? product;
@override final  String? weight;
@override final  String? cage;
@override final  String? priceAtTime;
@override final  String? discount;
@override final  String? total;

/// Create a copy of TransactionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailEntityCopyWith<_TransactionDetailEntity> get copyWith => __$TransactionDetailEntityCopyWithImpl<_TransactionDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.priceAtTime, priceAtTime) || other.priceAtTime == priceAtTime)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,weight,cage,priceAtTime,discount,total);

@override
String toString() {
  return 'TransactionDetailEntity(id: $id, product: $product, weight: $weight, cage: $cage, priceAtTime: $priceAtTime, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailEntityCopyWith<$Res> implements $TransactionDetailEntityCopyWith<$Res> {
  factory _$TransactionDetailEntityCopyWith(_TransactionDetailEntity value, $Res Function(_TransactionDetailEntity) _then) = __$TransactionDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, ProductModel? product, String? weight, String? cage, String? priceAtTime, String? discount, String? total
});


@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$TransactionDetailEntityCopyWithImpl<$Res>
    implements _$TransactionDetailEntityCopyWith<$Res> {
  __$TransactionDetailEntityCopyWithImpl(this._self, this._then);

  final _TransactionDetailEntity _self;
  final $Res Function(_TransactionDetailEntity) _then;

/// Create a copy of TransactionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? product = freezed,Object? weight = freezed,Object? cage = freezed,Object? priceAtTime = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_TransactionDetailEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,cage: freezed == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as String?,priceAtTime: freezed == priceAtTime ? _self.priceAtTime : priceAtTime // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TransactionDetailEntity
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
