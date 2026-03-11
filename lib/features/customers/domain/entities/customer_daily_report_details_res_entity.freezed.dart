// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_daily_report_details_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDailyReportDetailsResEntity {

 int? get id; String? get yesterdayClosedBalance; List<DailyTransactionEntity>? get transactions; String? get totalTransactionsAmount; List<DailyCollectionEntity>? get collections; List<DailyProductOrderEntity>? get orders; String? get closingBalance; String? get createdAt;
/// Create a copy of CustomerDailyReportDetailsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDailyReportDetailsResEntityCopyWith<CustomerDailyReportDetailsResEntity> get copyWith => _$CustomerDailyReportDetailsResEntityCopyWithImpl<CustomerDailyReportDetailsResEntity>(this as CustomerDailyReportDetailsResEntity, _$identity);

  /// Serializes this CustomerDailyReportDetailsResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDailyReportDetailsResEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.totalTransactionsAmount, totalTransactionsAmount) || other.totalTransactionsAmount == totalTransactionsAmount)&&const DeepCollectionEquality().equals(other.collections, collections)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yesterdayClosedBalance,const DeepCollectionEquality().hash(transactions),totalTransactionsAmount,const DeepCollectionEquality().hash(collections),const DeepCollectionEquality().hash(orders),closingBalance,createdAt);

@override
String toString() {
  return 'CustomerDailyReportDetailsResEntity(id: $id, yesterdayClosedBalance: $yesterdayClosedBalance, transactions: $transactions, totalTransactionsAmount: $totalTransactionsAmount, collections: $collections, orders: $orders, closingBalance: $closingBalance, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomerDailyReportDetailsResEntityCopyWith<$Res>  {
  factory $CustomerDailyReportDetailsResEntityCopyWith(CustomerDailyReportDetailsResEntity value, $Res Function(CustomerDailyReportDetailsResEntity) _then) = _$CustomerDailyReportDetailsResEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? yesterdayClosedBalance, List<DailyTransactionEntity>? transactions, String? totalTransactionsAmount, List<DailyCollectionEntity>? collections, List<DailyProductOrderEntity>? orders, String? closingBalance, String? createdAt
});




}
/// @nodoc
class _$CustomerDailyReportDetailsResEntityCopyWithImpl<$Res>
    implements $CustomerDailyReportDetailsResEntityCopyWith<$Res> {
  _$CustomerDailyReportDetailsResEntityCopyWithImpl(this._self, this._then);

  final CustomerDailyReportDetailsResEntity _self;
  final $Res Function(CustomerDailyReportDetailsResEntity) _then;

/// Create a copy of CustomerDailyReportDetailsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? yesterdayClosedBalance = freezed,Object? transactions = freezed,Object? totalTransactionsAmount = freezed,Object? collections = freezed,Object? orders = freezed,Object? closingBalance = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<DailyTransactionEntity>?,totalTransactionsAmount: freezed == totalTransactionsAmount ? _self.totalTransactionsAmount : totalTransactionsAmount // ignore: cast_nullable_to_non_nullable
as String?,collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as List<DailyCollectionEntity>?,orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<DailyProductOrderEntity>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerDailyReportDetailsResEntity].
extension CustomerDailyReportDetailsResEntityPatterns on CustomerDailyReportDetailsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDailyReportDetailsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDailyReportDetailsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDailyReportDetailsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? yesterdayClosedBalance,  List<DailyTransactionEntity>? transactions,  String? totalTransactionsAmount,  List<DailyCollectionEntity>? collections,  List<DailyProductOrderEntity>? orders,  String? closingBalance,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? yesterdayClosedBalance,  List<DailyTransactionEntity>? transactions,  String? totalTransactionsAmount,  List<DailyCollectionEntity>? collections,  List<DailyProductOrderEntity>? orders,  String? closingBalance,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? yesterdayClosedBalance,  List<DailyTransactionEntity>? transactions,  String? totalTransactionsAmount,  List<DailyCollectionEntity>? collections,  List<DailyProductOrderEntity>? orders,  String? closingBalance,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportDetailsResEntity() when $default != null:
return $default(_that.id,_that.yesterdayClosedBalance,_that.transactions,_that.totalTransactionsAmount,_that.collections,_that.orders,_that.closingBalance,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDailyReportDetailsResEntity implements CustomerDailyReportDetailsResEntity {
  const _CustomerDailyReportDetailsResEntity({this.id, this.yesterdayClosedBalance, final  List<DailyTransactionEntity>? transactions, this.totalTransactionsAmount, final  List<DailyCollectionEntity>? collections, final  List<DailyProductOrderEntity>? orders, this.closingBalance, this.createdAt}): _transactions = transactions,_collections = collections,_orders = orders;
  factory _CustomerDailyReportDetailsResEntity.fromJson(Map<String, dynamic> json) => _$CustomerDailyReportDetailsResEntityFromJson(json);

@override final  int? id;
@override final  String? yesterdayClosedBalance;
 final  List<DailyTransactionEntity>? _transactions;
@override List<DailyTransactionEntity>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? totalTransactionsAmount;
 final  List<DailyCollectionEntity>? _collections;
@override List<DailyCollectionEntity>? get collections {
  final value = _collections;
  if (value == null) return null;
  if (_collections is EqualUnmodifiableListView) return _collections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DailyProductOrderEntity>? _orders;
@override List<DailyProductOrderEntity>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? closingBalance;
@override final  String? createdAt;

/// Create a copy of CustomerDailyReportDetailsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDailyReportDetailsResEntityCopyWith<_CustomerDailyReportDetailsResEntity> get copyWith => __$CustomerDailyReportDetailsResEntityCopyWithImpl<_CustomerDailyReportDetailsResEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDailyReportDetailsResEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDailyReportDetailsResEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.totalTransactionsAmount, totalTransactionsAmount) || other.totalTransactionsAmount == totalTransactionsAmount)&&const DeepCollectionEquality().equals(other._collections, _collections)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,yesterdayClosedBalance,const DeepCollectionEquality().hash(_transactions),totalTransactionsAmount,const DeepCollectionEquality().hash(_collections),const DeepCollectionEquality().hash(_orders),closingBalance,createdAt);

@override
String toString() {
  return 'CustomerDailyReportDetailsResEntity(id: $id, yesterdayClosedBalance: $yesterdayClosedBalance, transactions: $transactions, totalTransactionsAmount: $totalTransactionsAmount, collections: $collections, orders: $orders, closingBalance: $closingBalance, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerDailyReportDetailsResEntityCopyWith<$Res> implements $CustomerDailyReportDetailsResEntityCopyWith<$Res> {
  factory _$CustomerDailyReportDetailsResEntityCopyWith(_CustomerDailyReportDetailsResEntity value, $Res Function(_CustomerDailyReportDetailsResEntity) _then) = __$CustomerDailyReportDetailsResEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? yesterdayClosedBalance, List<DailyTransactionEntity>? transactions, String? totalTransactionsAmount, List<DailyCollectionEntity>? collections, List<DailyProductOrderEntity>? orders, String? closingBalance, String? createdAt
});




}
/// @nodoc
class __$CustomerDailyReportDetailsResEntityCopyWithImpl<$Res>
    implements _$CustomerDailyReportDetailsResEntityCopyWith<$Res> {
  __$CustomerDailyReportDetailsResEntityCopyWithImpl(this._self, this._then);

  final _CustomerDailyReportDetailsResEntity _self;
  final $Res Function(_CustomerDailyReportDetailsResEntity) _then;

/// Create a copy of CustomerDailyReportDetailsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? yesterdayClosedBalance = freezed,Object? transactions = freezed,Object? totalTransactionsAmount = freezed,Object? collections = freezed,Object? orders = freezed,Object? closingBalance = freezed,Object? createdAt = freezed,}) {
  return _then(_CustomerDailyReportDetailsResEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<DailyTransactionEntity>?,totalTransactionsAmount: freezed == totalTransactionsAmount ? _self.totalTransactionsAmount : totalTransactionsAmount // ignore: cast_nullable_to_non_nullable
as String?,collections: freezed == collections ? _self._collections : collections // ignore: cast_nullable_to_non_nullable
as List<DailyCollectionEntity>?,orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<DailyProductOrderEntity>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
