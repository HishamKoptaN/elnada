// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_daily_report_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDailyReportDetailsResModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'yesterday_closed_balance') int? get yesterdayClosedBalance;@JsonKey(name: 'transactions') List<DailyTransactionModel>? get transactions;@JsonKey(name: 'total_transactions_amount') int? get totalTransactionsAmount;@JsonKey(name: 'collections') List<CollectionModel>? get collections;@JsonKey(name: 'orders') List<ProductOrderModel>? get orders;@JsonKey(name: 'closing_balance') int? get closingBalance;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of CustomerDailyReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDailyReportDetailsResModelCopyWith<CustomerDailyReportDetailsResModel> get copyWith => _$CustomerDailyReportDetailsResModelCopyWithImpl<CustomerDailyReportDetailsResModel>(this as CustomerDailyReportDetailsResModel, _$identity);

  /// Serializes this CustomerDailyReportDetailsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDailyReportDetailsResModel&&(identical(other.id, id) || other.id == id)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.totalTransactionsAmount, totalTransactionsAmount) || other.totalTransactionsAmount == totalTransactionsAmount)&&const DeepCollectionEquality().equals(other.collections, collections)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yesterdayClosedBalance,const DeepCollectionEquality().hash(transactions),totalTransactionsAmount,const DeepCollectionEquality().hash(collections),const DeepCollectionEquality().hash(orders),closingBalance,createdAt);

@override
String toString() {
  return 'CustomerDailyReportDetailsResModel(id: $id, yesterdayClosedBalance: $yesterdayClosedBalance, transactions: $transactions, totalTransactionsAmount: $totalTransactionsAmount, collections: $collections, orders: $orders, closingBalance: $closingBalance, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomerDailyReportDetailsResModelCopyWith<$Res>  {
  factory $CustomerDailyReportDetailsResModelCopyWith(CustomerDailyReportDetailsResModel value, $Res Function(CustomerDailyReportDetailsResModel) _then) = _$CustomerDailyReportDetailsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,@JsonKey(name: 'transactions') List<DailyTransactionModel>? transactions,@JsonKey(name: 'total_transactions_amount') int? totalTransactionsAmount,@JsonKey(name: 'collections') List<CollectionModel>? collections,@JsonKey(name: 'orders') List<ProductOrderModel>? orders,@JsonKey(name: 'closing_balance') int? closingBalance,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$CustomerDailyReportDetailsResModelCopyWithImpl<$Res>
    implements $CustomerDailyReportDetailsResModelCopyWith<$Res> {
  _$CustomerDailyReportDetailsResModelCopyWithImpl(this._self, this._then);

  final CustomerDailyReportDetailsResModel _self;
  final $Res Function(CustomerDailyReportDetailsResModel) _then;

/// Create a copy of CustomerDailyReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? yesterdayClosedBalance = freezed,Object? transactions = freezed,Object? totalTransactionsAmount = freezed,Object? collections = freezed,Object? orders = freezed,Object? closingBalance = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as int?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<DailyTransactionModel>?,totalTransactionsAmount: freezed == totalTransactionsAmount ? _self.totalTransactionsAmount : totalTransactionsAmount // ignore: cast_nullable_to_non_nullable
as int?,collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<ProductOrderModel>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerDailyReportDetailsResModel].
extension CustomerDailyReportDetailsResModelPatterns on CustomerDailyReportDetailsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDailyReportDetailsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDailyReportDetailsResModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDailyReportDetailsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'transactions')  List<DailyTransactionModel>? transactions, @JsonKey(name: 'total_transactions_amount')  int? totalTransactionsAmount, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'orders')  List<ProductOrderModel>? orders, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel() when $default != null:
return $default(_that.id,_that.yesterdayClosedBalance,_that.transactions,_that.totalTransactionsAmount,_that.collections,_that.orders,_that.closingBalance,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'transactions')  List<DailyTransactionModel>? transactions, @JsonKey(name: 'total_transactions_amount')  int? totalTransactionsAmount, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'orders')  List<ProductOrderModel>? orders, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel():
return $default(_that.id,_that.yesterdayClosedBalance,_that.transactions,_that.totalTransactionsAmount,_that.collections,_that.orders,_that.closingBalance,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'transactions')  List<DailyTransactionModel>? transactions, @JsonKey(name: 'total_transactions_amount')  int? totalTransactionsAmount, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'orders')  List<ProductOrderModel>? orders, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResModel() when $default != null:
return $default(_that.id,_that.yesterdayClosedBalance,_that.transactions,_that.totalTransactionsAmount,_that.collections,_that.orders,_that.closingBalance,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDailyReportDetailsResModel implements CustomerDailyReportDetailsResModel {
  const _CustomerDailyReportDetailsResModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'yesterday_closed_balance') this.yesterdayClosedBalance, @JsonKey(name: 'transactions') final  List<DailyTransactionModel>? transactions, @JsonKey(name: 'total_transactions_amount') this.totalTransactionsAmount, @JsonKey(name: 'collections') final  List<CollectionModel>? collections, @JsonKey(name: 'orders') final  List<ProductOrderModel>? orders, @JsonKey(name: 'closing_balance') this.closingBalance, @JsonKey(name: 'created_at') this.createdAt}): _transactions = transactions,_collections = collections,_orders = orders;
  factory _CustomerDailyReportDetailsResModel.fromJson(Map<String, dynamic> json) => _$CustomerDailyReportDetailsResModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'yesterday_closed_balance') final  int? yesterdayClosedBalance;
 final  List<DailyTransactionModel>? _transactions;
@override@JsonKey(name: 'transactions') List<DailyTransactionModel>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_transactions_amount') final  int? totalTransactionsAmount;
 final  List<CollectionModel>? _collections;
@override@JsonKey(name: 'collections') List<CollectionModel>? get collections {
  final value = _collections;
  if (value == null) return null;
  if (_collections is EqualUnmodifiableListView) return _collections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductOrderModel>? _orders;
@override@JsonKey(name: 'orders') List<ProductOrderModel>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'closing_balance') final  int? closingBalance;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of CustomerDailyReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDailyReportDetailsResModelCopyWith<_CustomerDailyReportDetailsResModel> get copyWith => __$CustomerDailyReportDetailsResModelCopyWithImpl<_CustomerDailyReportDetailsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDailyReportDetailsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDailyReportDetailsResModel&&(identical(other.id, id) || other.id == id)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.totalTransactionsAmount, totalTransactionsAmount) || other.totalTransactionsAmount == totalTransactionsAmount)&&const DeepCollectionEquality().equals(other._collections, _collections)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yesterdayClosedBalance,const DeepCollectionEquality().hash(_transactions),totalTransactionsAmount,const DeepCollectionEquality().hash(_collections),const DeepCollectionEquality().hash(_orders),closingBalance,createdAt);

@override
String toString() {
  return 'CustomerDailyReportDetailsResModel(id: $id, yesterdayClosedBalance: $yesterdayClosedBalance, transactions: $transactions, totalTransactionsAmount: $totalTransactionsAmount, collections: $collections, orders: $orders, closingBalance: $closingBalance, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerDailyReportDetailsResModelCopyWith<$Res> implements $CustomerDailyReportDetailsResModelCopyWith<$Res> {
  factory _$CustomerDailyReportDetailsResModelCopyWith(_CustomerDailyReportDetailsResModel value, $Res Function(_CustomerDailyReportDetailsResModel) _then) = __$CustomerDailyReportDetailsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,@JsonKey(name: 'transactions') List<DailyTransactionModel>? transactions,@JsonKey(name: 'total_transactions_amount') int? totalTransactionsAmount,@JsonKey(name: 'collections') List<CollectionModel>? collections,@JsonKey(name: 'orders') List<ProductOrderModel>? orders,@JsonKey(name: 'closing_balance') int? closingBalance,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$CustomerDailyReportDetailsResModelCopyWithImpl<$Res>
    implements _$CustomerDailyReportDetailsResModelCopyWith<$Res> {
  __$CustomerDailyReportDetailsResModelCopyWithImpl(this._self, this._then);

  final _CustomerDailyReportDetailsResModel _self;
  final $Res Function(_CustomerDailyReportDetailsResModel) _then;

/// Create a copy of CustomerDailyReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? yesterdayClosedBalance = freezed,Object? transactions = freezed,Object? totalTransactionsAmount = freezed,Object? collections = freezed,Object? orders = freezed,Object? closingBalance = freezed,Object? createdAt = freezed,}) {
  return _then(_CustomerDailyReportDetailsResModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as int?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<DailyTransactionModel>?,totalTransactionsAmount: freezed == totalTransactionsAmount ? _self.totalTransactionsAmount : totalTransactionsAmount // ignore: cast_nullable_to_non_nullable
as int?,collections: freezed == collections ? _self._collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<ProductOrderModel>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductDailyTotalModel {

@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'total_weight') double? get totalWeight;@JsonKey(name: 'total_amount') int? get totalAmount;
/// Create a copy of ProductDailyTotalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDailyTotalModelCopyWith<ProductDailyTotalModel> get copyWith => _$ProductDailyTotalModelCopyWithImpl<ProductDailyTotalModel>(this as ProductDailyTotalModel, _$identity);

  /// Serializes this ProductDailyTotalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDailyTotalModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalWeight,totalAmount);

@override
String toString() {
  return 'ProductDailyTotalModel(productId: $productId, totalWeight: $totalWeight, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $ProductDailyTotalModelCopyWith<$Res>  {
  factory $ProductDailyTotalModelCopyWith(ProductDailyTotalModel value, $Res Function(ProductDailyTotalModel) _then) = _$ProductDailyTotalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_weight') double? totalWeight,@JsonKey(name: 'total_amount') int? totalAmount
});




}
/// @nodoc
class _$ProductDailyTotalModelCopyWithImpl<$Res>
    implements $ProductDailyTotalModelCopyWith<$Res> {
  _$ProductDailyTotalModelCopyWithImpl(this._self, this._then);

  final ProductDailyTotalModel _self;
  final $Res Function(ProductDailyTotalModel) _then;

/// Create a copy of ProductDailyTotalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? totalWeight = freezed,Object? totalAmount = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as double?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDailyTotalModel].
extension ProductDailyTotalModelPatterns on ProductDailyTotalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDailyTotalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDailyTotalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDailyTotalModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductDailyTotalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDailyTotalModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDailyTotalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_weight')  double? totalWeight, @JsonKey(name: 'total_amount')  int? totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDailyTotalModel() when $default != null:
return $default(_that.productId,_that.totalWeight,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_weight')  double? totalWeight, @JsonKey(name: 'total_amount')  int? totalAmount)  $default,) {final _that = this;
switch (_that) {
case _ProductDailyTotalModel():
return $default(_that.productId,_that.totalWeight,_that.totalAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'total_weight')  double? totalWeight, @JsonKey(name: 'total_amount')  int? totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _ProductDailyTotalModel() when $default != null:
return $default(_that.productId,_that.totalWeight,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDailyTotalModel implements ProductDailyTotalModel {
  const _ProductDailyTotalModel({@JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'total_weight') this.totalWeight, @JsonKey(name: 'total_amount') this.totalAmount});
  factory _ProductDailyTotalModel.fromJson(Map<String, dynamic> json) => _$ProductDailyTotalModelFromJson(json);

@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'total_weight') final  double? totalWeight;
@override@JsonKey(name: 'total_amount') final  int? totalAmount;

/// Create a copy of ProductDailyTotalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDailyTotalModelCopyWith<_ProductDailyTotalModel> get copyWith => __$ProductDailyTotalModelCopyWithImpl<_ProductDailyTotalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDailyTotalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDailyTotalModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalWeight,totalAmount);

@override
String toString() {
  return 'ProductDailyTotalModel(productId: $productId, totalWeight: $totalWeight, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$ProductDailyTotalModelCopyWith<$Res> implements $ProductDailyTotalModelCopyWith<$Res> {
  factory _$ProductDailyTotalModelCopyWith(_ProductDailyTotalModel value, $Res Function(_ProductDailyTotalModel) _then) = __$ProductDailyTotalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_weight') double? totalWeight,@JsonKey(name: 'total_amount') int? totalAmount
});




}
/// @nodoc
class __$ProductDailyTotalModelCopyWithImpl<$Res>
    implements _$ProductDailyTotalModelCopyWith<$Res> {
  __$ProductDailyTotalModelCopyWithImpl(this._self, this._then);

  final _ProductDailyTotalModel _self;
  final $Res Function(_ProductDailyTotalModel) _then;

/// Create a copy of ProductDailyTotalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? totalWeight = freezed,Object? totalAmount = freezed,}) {
  return _then(_ProductDailyTotalModel(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as double?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ProductOrderModel {

@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'total_count') int? get totalCount;
/// Create a copy of ProductOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOrderModelCopyWith<ProductOrderModel> get copyWith => _$ProductOrderModelCopyWithImpl<ProductOrderModel>(this as ProductOrderModel, _$identity);

  /// Serializes this ProductOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOrderModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalCount);

@override
String toString() {
  return 'ProductOrderModel(productId: $productId, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $ProductOrderModelCopyWith<$Res>  {
  factory $ProductOrderModelCopyWith(ProductOrderModel value, $Res Function(ProductOrderModel) _then) = _$ProductOrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_count') int? totalCount
});




}
/// @nodoc
class _$ProductOrderModelCopyWithImpl<$Res>
    implements $ProductOrderModelCopyWith<$Res> {
  _$ProductOrderModelCopyWithImpl(this._self, this._then);

  final ProductOrderModel _self;
  final $Res Function(ProductOrderModel) _then;

/// Create a copy of ProductOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductOrderModel].
extension ProductOrderModelPatterns on ProductOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOrderModel() when $default != null:
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
case _ProductOrderModel() when $default != null:
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
case _ProductOrderModel():
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
case _ProductOrderModel() when $default != null:
return $default(_that.productId,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductOrderModel implements ProductOrderModel {
  const _ProductOrderModel({@JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'total_count') this.totalCount});
  factory _ProductOrderModel.fromJson(Map<String, dynamic> json) => _$ProductOrderModelFromJson(json);

@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'total_count') final  int? totalCount;

/// Create a copy of ProductOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOrderModelCopyWith<_ProductOrderModel> get copyWith => __$ProductOrderModelCopyWithImpl<_ProductOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOrderModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalCount);

@override
String toString() {
  return 'ProductOrderModel(productId: $productId, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$ProductOrderModelCopyWith<$Res> implements $ProductOrderModelCopyWith<$Res> {
  factory _$ProductOrderModelCopyWith(_ProductOrderModel value, $Res Function(_ProductOrderModel) _then) = __$ProductOrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'total_count') int? totalCount
});




}
/// @nodoc
class __$ProductOrderModelCopyWithImpl<$Res>
    implements _$ProductOrderModelCopyWith<$Res> {
  __$ProductOrderModelCopyWithImpl(this._self, this._then);

  final _ProductOrderModel _self;
  final $Res Function(_ProductOrderModel) _then;

/// Create a copy of ProductOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? totalCount = freezed,}) {
  return _then(_ProductOrderModel(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ProductReturnModel {

@JsonKey(name: 'product') ProductModel? get product;@JsonKey(name: 'total_weight') double? get totalWeight;
/// Create a copy of ProductReturnModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReturnModelCopyWith<ProductReturnModel> get copyWith => _$ProductReturnModelCopyWithImpl<ProductReturnModel>(this as ProductReturnModel, _$identity);

  /// Serializes this ProductReturnModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReturnModel&&(identical(other.product, product) || other.product == product)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,totalWeight);

@override
String toString() {
  return 'ProductReturnModel(product: $product, totalWeight: $totalWeight)';
}


}

/// @nodoc
abstract mixin class $ProductReturnModelCopyWith<$Res>  {
  factory $ProductReturnModelCopyWith(ProductReturnModel value, $Res Function(ProductReturnModel) _then) = _$ProductReturnModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'total_weight') double? totalWeight
});


$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductReturnModelCopyWithImpl<$Res>
    implements $ProductReturnModelCopyWith<$Res> {
  _$ProductReturnModelCopyWithImpl(this._self, this._then);

  final ProductReturnModel _self;
  final $Res Function(ProductReturnModel) _then;

/// Create a copy of ProductReturnModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? totalWeight = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of ProductReturnModel
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


/// Adds pattern-matching-related methods to [ProductReturnModel].
extension ProductReturnModelPatterns on ProductReturnModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReturnModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReturnModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReturnModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductReturnModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReturnModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReturnModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'total_weight')  double? totalWeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReturnModel() when $default != null:
return $default(_that.product,_that.totalWeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'total_weight')  double? totalWeight)  $default,) {final _that = this;
switch (_that) {
case _ProductReturnModel():
return $default(_that.product,_that.totalWeight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product')  ProductModel? product, @JsonKey(name: 'total_weight')  double? totalWeight)?  $default,) {final _that = this;
switch (_that) {
case _ProductReturnModel() when $default != null:
return $default(_that.product,_that.totalWeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReturnModel implements ProductReturnModel {
  const _ProductReturnModel({@JsonKey(name: 'product') this.product, @JsonKey(name: 'total_weight') this.totalWeight});
  factory _ProductReturnModel.fromJson(Map<String, dynamic> json) => _$ProductReturnModelFromJson(json);

@override@JsonKey(name: 'product') final  ProductModel? product;
@override@JsonKey(name: 'total_weight') final  double? totalWeight;

/// Create a copy of ProductReturnModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReturnModelCopyWith<_ProductReturnModel> get copyWith => __$ProductReturnModelCopyWithImpl<_ProductReturnModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReturnModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReturnModel&&(identical(other.product, product) || other.product == product)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,totalWeight);

@override
String toString() {
  return 'ProductReturnModel(product: $product, totalWeight: $totalWeight)';
}


}

/// @nodoc
abstract mixin class _$ProductReturnModelCopyWith<$Res> implements $ProductReturnModelCopyWith<$Res> {
  factory _$ProductReturnModelCopyWith(_ProductReturnModel value, $Res Function(_ProductReturnModel) _then) = __$ProductReturnModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product') ProductModel? product,@JsonKey(name: 'total_weight') double? totalWeight
});


@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductReturnModelCopyWithImpl<$Res>
    implements _$ProductReturnModelCopyWith<$Res> {
  __$ProductReturnModelCopyWithImpl(this._self, this._then);

  final _ProductReturnModel _self;
  final $Res Function(_ProductReturnModel) _then;

/// Create a copy of ProductReturnModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? totalWeight = freezed,}) {
  return _then(_ProductReturnModel(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of ProductReturnModel
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
