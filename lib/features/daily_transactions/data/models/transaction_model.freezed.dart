// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyTransactionModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'total_amount') int? get totalAmount;@JsonKey(name: 'details') List<TransactionDetailModel>? get details;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of DailyTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyTransactionModelCopyWith<DailyTransactionModel> get copyWith => _$DailyTransactionModelCopyWithImpl<DailyTransactionModel>(this as DailyTransactionModel, _$identity);

  /// Serializes this DailyTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,const DeepCollectionEquality().hash(details),createdAt);

@override
String toString() {
  return 'DailyTransactionModel(id: $id, totalAmount: $totalAmount, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DailyTransactionModelCopyWith<$Res>  {
  factory $DailyTransactionModelCopyWith(DailyTransactionModel value, $Res Function(DailyTransactionModel) _then) = _$DailyTransactionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_amount') int? totalAmount,@JsonKey(name: 'details') List<TransactionDetailModel>? details,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$DailyTransactionModelCopyWithImpl<$Res>
    implements $DailyTransactionModelCopyWith<$Res> {
  _$DailyTransactionModelCopyWithImpl(this._self, this._then);

  final DailyTransactionModel _self;
  final $Res Function(DailyTransactionModel) _then;

/// Create a copy of DailyTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? totalAmount = freezed,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<TransactionDetailModel>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyTransactionModel].
extension DailyTransactionModelPatterns on DailyTransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyTransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _DailyTransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DailyTransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_amount')  int? totalAmount, @JsonKey(name: 'details')  List<TransactionDetailModel>? details, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyTransactionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_amount')  int? totalAmount, @JsonKey(name: 'details')  List<TransactionDetailModel>? details, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DailyTransactionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'total_amount')  int? totalAmount, @JsonKey(name: 'details')  List<TransactionDetailModel>? details, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyTransactionModel() when $default != null:
return $default(_that.id,_that.totalAmount,_that.details,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyTransactionModel implements DailyTransactionModel {
  const _DailyTransactionModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'total_amount') this.totalAmount, @JsonKey(name: 'details') final  List<TransactionDetailModel>? details, @JsonKey(name: 'created_at') this.createdAt}): _details = details;
  factory _DailyTransactionModel.fromJson(Map<String, dynamic> json) => _$DailyTransactionModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'total_amount') final  int? totalAmount;
 final  List<TransactionDetailModel>? _details;
@override@JsonKey(name: 'details') List<TransactionDetailModel>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of DailyTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyTransactionModelCopyWith<_DailyTransactionModel> get copyWith => __$DailyTransactionModelCopyWithImpl<_DailyTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other._details, _details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,const DeepCollectionEquality().hash(_details),createdAt);

@override
String toString() {
  return 'DailyTransactionModel(id: $id, totalAmount: $totalAmount, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DailyTransactionModelCopyWith<$Res> implements $DailyTransactionModelCopyWith<$Res> {
  factory _$DailyTransactionModelCopyWith(_DailyTransactionModel value, $Res Function(_DailyTransactionModel) _then) = __$DailyTransactionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'total_amount') int? totalAmount,@JsonKey(name: 'details') List<TransactionDetailModel>? details,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$DailyTransactionModelCopyWithImpl<$Res>
    implements _$DailyTransactionModelCopyWith<$Res> {
  __$DailyTransactionModelCopyWithImpl(this._self, this._then);

  final _DailyTransactionModel _self;
  final $Res Function(_DailyTransactionModel) _then;

/// Create a copy of DailyTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? totalAmount = freezed,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_DailyTransactionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<TransactionDetailModel>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TransactionDetailModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'product') ProductModel? get product;@JsonKey(name: 'weight') double? get weight;@JsonKey(name: 'price_at_time') double? get priceAtTime;@JsonKey(name: 'discount') int? get discount;@JsonKey(name: 'total') int? get total;
/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailModelCopyWith<TransactionDetailModel> get copyWith => _$TransactionDetailModelCopyWithImpl<TransactionDetailModel>(this as TransactionDetailModel, _$identity);

  /// Serializes this TransactionDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.priceAtTime, priceAtTime) || other.priceAtTime == priceAtTime)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,weight,priceAtTime,discount,total);

@override
String toString() {
  return 'TransactionDetailModel(id: $id, product: $product, weight: $weight, priceAtTime: $priceAtTime, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailModelCopyWith<$Res>  {
  factory $TransactionDetailModelCopyWith(TransactionDetailModel value, $Res Function(TransactionDetailModel) _then) = _$TransactionDetailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'weight') double? weight,@JsonKey(name: 'price_at_time') double? priceAtTime,@JsonKey(name: 'discount') int? discount,@JsonKey(name: 'total') int? total
});


$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$TransactionDetailModelCopyWithImpl<$Res>
    implements $TransactionDetailModelCopyWith<$Res> {
  _$TransactionDetailModelCopyWithImpl(this._self, this._then);

  final TransactionDetailModel _self;
  final $Res Function(TransactionDetailModel) _then;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? product = freezed,Object? weight = freezed,Object? priceAtTime = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,priceAtTime: freezed == priceAtTime ? _self.priceAtTime : priceAtTime // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of TransactionDetailModel
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


/// Adds pattern-matching-related methods to [TransactionDetailModel].
extension TransactionDetailModelPatterns on TransactionDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'price_at_time')  double? priceAtTime, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'total')  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
return $default(_that.id,_that.product,_that.weight,_that.priceAtTime,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'price_at_time')  double? priceAtTime, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'total')  int? total)  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailModel():
return $default(_that.id,_that.product,_that.weight,_that.priceAtTime,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'weight')  double? weight, @JsonKey(name: 'price_at_time')  double? priceAtTime, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'total')  int? total)?  $default,) {final _that = this;
switch (_that) {
case _TransactionDetailModel() when $default != null:
return $default(_that.id,_that.product,_that.weight,_that.priceAtTime,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionDetailModel implements TransactionDetailModel {
  const _TransactionDetailModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'product') this.product, @JsonKey(name: 'weight') this.weight, @JsonKey(name: 'price_at_time') this.priceAtTime, @JsonKey(name: 'discount') this.discount, @JsonKey(name: 'total') this.total});
  factory _TransactionDetailModel.fromJson(Map<String, dynamic> json) => _$TransactionDetailModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'product') final  ProductModel? product;
@override@JsonKey(name: 'weight') final  double? weight;
@override@JsonKey(name: 'price_at_time') final  double? priceAtTime;
@override@JsonKey(name: 'discount') final  int? discount;
@override@JsonKey(name: 'total') final  int? total;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailModelCopyWith<_TransactionDetailModel> get copyWith => __$TransactionDetailModelCopyWithImpl<_TransactionDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.priceAtTime, priceAtTime) || other.priceAtTime == priceAtTime)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product,weight,priceAtTime,discount,total);

@override
String toString() {
  return 'TransactionDetailModel(id: $id, product: $product, weight: $weight, priceAtTime: $priceAtTime, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailModelCopyWith<$Res> implements $TransactionDetailModelCopyWith<$Res> {
  factory _$TransactionDetailModelCopyWith(_TransactionDetailModel value, $Res Function(_TransactionDetailModel) _then) = __$TransactionDetailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'weight') double? weight,@JsonKey(name: 'price_at_time') double? priceAtTime,@JsonKey(name: 'discount') int? discount,@JsonKey(name: 'total') int? total
});


@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$TransactionDetailModelCopyWithImpl<$Res>
    implements _$TransactionDetailModelCopyWith<$Res> {
  __$TransactionDetailModelCopyWithImpl(this._self, this._then);

  final _TransactionDetailModel _self;
  final $Res Function(_TransactionDetailModel) _then;

/// Create a copy of TransactionDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? product = freezed,Object? weight = freezed,Object? priceAtTime = freezed,Object? discount = freezed,Object? total = freezed,}) {
  return _then(_TransactionDetailModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,priceAtTime: freezed == priceAtTime ? _self.priceAtTime : priceAtTime // ignore: cast_nullable_to_non_nullable
as double?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of TransactionDetailModel
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
