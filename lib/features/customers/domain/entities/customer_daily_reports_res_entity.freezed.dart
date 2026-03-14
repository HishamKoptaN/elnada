// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_daily_reports_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomersResEntity {

 bool? get canInsertPreviusDayData; List<ProductPriceEntity>? get productDailyPrices; List<CustomerDailyReportEntity>? get customerDailyReports;
/// Create a copy of CustomersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomersResEntityCopyWith<CustomersResEntity> get copyWith => _$CustomersResEntityCopyWithImpl<CustomersResEntity>(this as CustomersResEntity, _$identity);

  /// Serializes this CustomersResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomersResEntity&&(identical(other.canInsertPreviusDayData, canInsertPreviusDayData) || other.canInsertPreviusDayData == canInsertPreviusDayData)&&const DeepCollectionEquality().equals(other.productDailyPrices, productDailyPrices)&&const DeepCollectionEquality().equals(other.customerDailyReports, customerDailyReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canInsertPreviusDayData,const DeepCollectionEquality().hash(productDailyPrices),const DeepCollectionEquality().hash(customerDailyReports));

@override
String toString() {
  return 'CustomersResEntity(canInsertPreviusDayData: $canInsertPreviusDayData, productDailyPrices: $productDailyPrices, customerDailyReports: $customerDailyReports)';
}


}

/// @nodoc
abstract mixin class $CustomersResEntityCopyWith<$Res>  {
  factory $CustomersResEntityCopyWith(CustomersResEntity value, $Res Function(CustomersResEntity) _then) = _$CustomersResEntityCopyWithImpl;
@useResult
$Res call({
 bool? canInsertPreviusDayData, List<ProductPriceEntity>? productDailyPrices, List<CustomerDailyReportEntity>? customerDailyReports
});




}
/// @nodoc
class _$CustomersResEntityCopyWithImpl<$Res>
    implements $CustomersResEntityCopyWith<$Res> {
  _$CustomersResEntityCopyWithImpl(this._self, this._then);

  final CustomersResEntity _self;
  final $Res Function(CustomersResEntity) _then;

/// Create a copy of CustomersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canInsertPreviusDayData = freezed,Object? productDailyPrices = freezed,Object? customerDailyReports = freezed,}) {
  return _then(_self.copyWith(
canInsertPreviusDayData: freezed == canInsertPreviusDayData ? _self.canInsertPreviusDayData : canInsertPreviusDayData // ignore: cast_nullable_to_non_nullable
as bool?,productDailyPrices: freezed == productDailyPrices ? _self.productDailyPrices : productDailyPrices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceEntity>?,customerDailyReports: freezed == customerDailyReports ? _self.customerDailyReports : customerDailyReports // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomersResEntity].
extension CustomersResEntityPatterns on CustomersResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomersResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomersResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomersResEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomersResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomersResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomersResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? canInsertPreviusDayData,  List<ProductPriceEntity>? productDailyPrices,  List<CustomerDailyReportEntity>? customerDailyReports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomersResEntity() when $default != null:
return $default(_that.canInsertPreviusDayData,_that.productDailyPrices,_that.customerDailyReports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? canInsertPreviusDayData,  List<ProductPriceEntity>? productDailyPrices,  List<CustomerDailyReportEntity>? customerDailyReports)  $default,) {final _that = this;
switch (_that) {
case _CustomersResEntity():
return $default(_that.canInsertPreviusDayData,_that.productDailyPrices,_that.customerDailyReports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? canInsertPreviusDayData,  List<ProductPriceEntity>? productDailyPrices,  List<CustomerDailyReportEntity>? customerDailyReports)?  $default,) {final _that = this;
switch (_that) {
case _CustomersResEntity() when $default != null:
return $default(_that.canInsertPreviusDayData,_that.productDailyPrices,_that.customerDailyReports);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomersResEntity implements CustomersResEntity {
  const _CustomersResEntity({this.canInsertPreviusDayData, final  List<ProductPriceEntity>? productDailyPrices, final  List<CustomerDailyReportEntity>? customerDailyReports}): _productDailyPrices = productDailyPrices,_customerDailyReports = customerDailyReports;
  factory _CustomersResEntity.fromJson(Map<String, dynamic> json) => _$CustomersResEntityFromJson(json);

@override final  bool? canInsertPreviusDayData;
 final  List<ProductPriceEntity>? _productDailyPrices;
@override List<ProductPriceEntity>? get productDailyPrices {
  final value = _productDailyPrices;
  if (value == null) return null;
  if (_productDailyPrices is EqualUnmodifiableListView) return _productDailyPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CustomerDailyReportEntity>? _customerDailyReports;
@override List<CustomerDailyReportEntity>? get customerDailyReports {
  final value = _customerDailyReports;
  if (value == null) return null;
  if (_customerDailyReports is EqualUnmodifiableListView) return _customerDailyReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomersResEntityCopyWith<_CustomersResEntity> get copyWith => __$CustomersResEntityCopyWithImpl<_CustomersResEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomersResEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomersResEntity&&(identical(other.canInsertPreviusDayData, canInsertPreviusDayData) || other.canInsertPreviusDayData == canInsertPreviusDayData)&&const DeepCollectionEquality().equals(other._productDailyPrices, _productDailyPrices)&&const DeepCollectionEquality().equals(other._customerDailyReports, _customerDailyReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canInsertPreviusDayData,const DeepCollectionEquality().hash(_productDailyPrices),const DeepCollectionEquality().hash(_customerDailyReports));

@override
String toString() {
  return 'CustomersResEntity(canInsertPreviusDayData: $canInsertPreviusDayData, productDailyPrices: $productDailyPrices, customerDailyReports: $customerDailyReports)';
}


}

/// @nodoc
abstract mixin class _$CustomersResEntityCopyWith<$Res> implements $CustomersResEntityCopyWith<$Res> {
  factory _$CustomersResEntityCopyWith(_CustomersResEntity value, $Res Function(_CustomersResEntity) _then) = __$CustomersResEntityCopyWithImpl;
@override @useResult
$Res call({
 bool? canInsertPreviusDayData, List<ProductPriceEntity>? productDailyPrices, List<CustomerDailyReportEntity>? customerDailyReports
});




}
/// @nodoc
class __$CustomersResEntityCopyWithImpl<$Res>
    implements _$CustomersResEntityCopyWith<$Res> {
  __$CustomersResEntityCopyWithImpl(this._self, this._then);

  final _CustomersResEntity _self;
  final $Res Function(_CustomersResEntity) _then;

/// Create a copy of CustomersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canInsertPreviusDayData = freezed,Object? productDailyPrices = freezed,Object? customerDailyReports = freezed,}) {
  return _then(_CustomersResEntity(
canInsertPreviusDayData: freezed == canInsertPreviusDayData ? _self.canInsertPreviusDayData : canInsertPreviusDayData // ignore: cast_nullable_to_non_nullable
as bool?,productDailyPrices: freezed == productDailyPrices ? _self._productDailyPrices : productDailyPrices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceEntity>?,customerDailyReports: freezed == customerDailyReports ? _self._customerDailyReports : customerDailyReports // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportEntity>?,
  ));
}


}


/// @nodoc
mixin _$CustomerDailyReportEntity {

 int? get id; CustomerEntity? get customer; String? get yesterdayClosedBalance; List<ProductDailyTotalEntity>? get productDailyTotals; String? get totalCollections; List<ProductReturnEntity>? get returns; String? get closingBalance; List<DailyProductOrderEntity>? get productOrders;
/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDailyReportEntityCopyWith<CustomerDailyReportEntity> get copyWith => _$CustomerDailyReportEntityCopyWithImpl<CustomerDailyReportEntity>(this as CustomerDailyReportEntity, _$identity);

  /// Serializes this CustomerDailyReportEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDailyReportEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other.productDailyTotals, productDailyTotals)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&const DeepCollectionEquality().equals(other.returns, returns)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other.productOrders, productOrders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customer,yesterdayClosedBalance,const DeepCollectionEquality().hash(productDailyTotals),totalCollections,const DeepCollectionEquality().hash(returns),closingBalance,const DeepCollectionEquality().hash(productOrders));

@override
String toString() {
  return 'CustomerDailyReportEntity(id: $id, customer: $customer, yesterdayClosedBalance: $yesterdayClosedBalance, productDailyTotals: $productDailyTotals, totalCollections: $totalCollections, returns: $returns, closingBalance: $closingBalance, productOrders: $productOrders)';
}


}

/// @nodoc
abstract mixin class $CustomerDailyReportEntityCopyWith<$Res>  {
  factory $CustomerDailyReportEntityCopyWith(CustomerDailyReportEntity value, $Res Function(CustomerDailyReportEntity) _then) = _$CustomerDailyReportEntityCopyWithImpl;
@useResult
$Res call({
 int? id, CustomerEntity? customer, String? yesterdayClosedBalance, List<ProductDailyTotalEntity>? productDailyTotals, String? totalCollections, List<ProductReturnEntity>? returns, String? closingBalance, List<DailyProductOrderEntity>? productOrders
});


$CustomerEntityCopyWith<$Res>? get customer;

}
/// @nodoc
class _$CustomerDailyReportEntityCopyWithImpl<$Res>
    implements $CustomerDailyReportEntityCopyWith<$Res> {
  _$CustomerDailyReportEntityCopyWithImpl(this._self, this._then);

  final CustomerDailyReportEntity _self;
  final $Res Function(CustomerDailyReportEntity) _then;

/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customer = freezed,Object? yesterdayClosedBalance = freezed,Object? productDailyTotals = freezed,Object? totalCollections = freezed,Object? returns = freezed,Object? closingBalance = freezed,Object? productOrders = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as String?,productDailyTotals: freezed == productDailyTotals ? _self.productDailyTotals : productDailyTotals // ignore: cast_nullable_to_non_nullable
as List<ProductDailyTotalEntity>?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as String?,returns: freezed == returns ? _self.returns : returns // ignore: cast_nullable_to_non_nullable
as List<ProductReturnEntity>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String?,productOrders: freezed == productOrders ? _self.productOrders : productOrders // ignore: cast_nullable_to_non_nullable
as List<DailyProductOrderEntity>?,
  ));
}
/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerDailyReportEntity].
extension CustomerDailyReportEntityPatterns on CustomerDailyReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDailyReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDailyReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDailyReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDailyReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  CustomerEntity? customer,  String? yesterdayClosedBalance,  List<ProductDailyTotalEntity>? productDailyTotals,  String? totalCollections,  List<ProductReturnEntity>? returns,  String? closingBalance,  List<DailyProductOrderEntity>? productOrders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDailyReportEntity() when $default != null:
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.totalCollections,_that.returns,_that.closingBalance,_that.productOrders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  CustomerEntity? customer,  String? yesterdayClosedBalance,  List<ProductDailyTotalEntity>? productDailyTotals,  String? totalCollections,  List<ProductReturnEntity>? returns,  String? closingBalance,  List<DailyProductOrderEntity>? productOrders)  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportEntity():
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.totalCollections,_that.returns,_that.closingBalance,_that.productOrders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  CustomerEntity? customer,  String? yesterdayClosedBalance,  List<ProductDailyTotalEntity>? productDailyTotals,  String? totalCollections,  List<ProductReturnEntity>? returns,  String? closingBalance,  List<DailyProductOrderEntity>? productOrders)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportEntity() when $default != null:
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.totalCollections,_that.returns,_that.closingBalance,_that.productOrders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDailyReportEntity implements CustomerDailyReportEntity {
  const _CustomerDailyReportEntity({this.id, this.customer, this.yesterdayClosedBalance, final  List<ProductDailyTotalEntity>? productDailyTotals, this.totalCollections, final  List<ProductReturnEntity>? returns, this.closingBalance, final  List<DailyProductOrderEntity>? productOrders}): _productDailyTotals = productDailyTotals,_returns = returns,_productOrders = productOrders;
  factory _CustomerDailyReportEntity.fromJson(Map<String, dynamic> json) => _$CustomerDailyReportEntityFromJson(json);

@override final  int? id;
@override final  CustomerEntity? customer;
@override final  String? yesterdayClosedBalance;
 final  List<ProductDailyTotalEntity>? _productDailyTotals;
@override List<ProductDailyTotalEntity>? get productDailyTotals {
  final value = _productDailyTotals;
  if (value == null) return null;
  if (_productDailyTotals is EqualUnmodifiableListView) return _productDailyTotals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? totalCollections;
 final  List<ProductReturnEntity>? _returns;
@override List<ProductReturnEntity>? get returns {
  final value = _returns;
  if (value == null) return null;
  if (_returns is EqualUnmodifiableListView) return _returns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? closingBalance;
 final  List<DailyProductOrderEntity>? _productOrders;
@override List<DailyProductOrderEntity>? get productOrders {
  final value = _productOrders;
  if (value == null) return null;
  if (_productOrders is EqualUnmodifiableListView) return _productOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDailyReportEntityCopyWith<_CustomerDailyReportEntity> get copyWith => __$CustomerDailyReportEntityCopyWithImpl<_CustomerDailyReportEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDailyReportEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDailyReportEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other._productDailyTotals, _productDailyTotals)&&(identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections)&&const DeepCollectionEquality().equals(other._returns, _returns)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other._productOrders, _productOrders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customer,yesterdayClosedBalance,const DeepCollectionEquality().hash(_productDailyTotals),totalCollections,const DeepCollectionEquality().hash(_returns),closingBalance,const DeepCollectionEquality().hash(_productOrders));

@override
String toString() {
  return 'CustomerDailyReportEntity(id: $id, customer: $customer, yesterdayClosedBalance: $yesterdayClosedBalance, productDailyTotals: $productDailyTotals, totalCollections: $totalCollections, returns: $returns, closingBalance: $closingBalance, productOrders: $productOrders)';
}


}

/// @nodoc
abstract mixin class _$CustomerDailyReportEntityCopyWith<$Res> implements $CustomerDailyReportEntityCopyWith<$Res> {
  factory _$CustomerDailyReportEntityCopyWith(_CustomerDailyReportEntity value, $Res Function(_CustomerDailyReportEntity) _then) = __$CustomerDailyReportEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, CustomerEntity? customer, String? yesterdayClosedBalance, List<ProductDailyTotalEntity>? productDailyTotals, String? totalCollections, List<ProductReturnEntity>? returns, String? closingBalance, List<DailyProductOrderEntity>? productOrders
});


@override $CustomerEntityCopyWith<$Res>? get customer;

}
/// @nodoc
class __$CustomerDailyReportEntityCopyWithImpl<$Res>
    implements _$CustomerDailyReportEntityCopyWith<$Res> {
  __$CustomerDailyReportEntityCopyWithImpl(this._self, this._then);

  final _CustomerDailyReportEntity _self;
  final $Res Function(_CustomerDailyReportEntity) _then;

/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customer = freezed,Object? yesterdayClosedBalance = freezed,Object? productDailyTotals = freezed,Object? totalCollections = freezed,Object? returns = freezed,Object? closingBalance = freezed,Object? productOrders = freezed,}) {
  return _then(_CustomerDailyReportEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as String?,productDailyTotals: freezed == productDailyTotals ? _self._productDailyTotals : productDailyTotals // ignore: cast_nullable_to_non_nullable
as List<ProductDailyTotalEntity>?,totalCollections: freezed == totalCollections ? _self.totalCollections : totalCollections // ignore: cast_nullable_to_non_nullable
as String?,returns: freezed == returns ? _self._returns : returns // ignore: cast_nullable_to_non_nullable
as List<ProductReturnEntity>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String?,productOrders: freezed == productOrders ? _self._productOrders : productOrders // ignore: cast_nullable_to_non_nullable
as List<DailyProductOrderEntity>?,
  ));
}

/// Create a copy of CustomerDailyReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// @nodoc
mixin _$CustomerEntity {

 int? get id; int? get number; String? get name; String? get phone;
/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<CustomerEntity> get copyWith => _$CustomerEntityCopyWithImpl<CustomerEntity>(this as CustomerEntity, _$identity);

  /// Serializes this CustomerEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,name,phone);

@override
String toString() {
  return 'CustomerEntity(id: $id, number: $number, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $CustomerEntityCopyWith<$Res>  {
  factory $CustomerEntityCopyWith(CustomerEntity value, $Res Function(CustomerEntity) _then) = _$CustomerEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? number, String? name, String? phone
});




}
/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._self, this._then);

  final CustomerEntity _self;
  final $Res Function(CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? number = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerEntity].
extension CustomerEntityPatterns on CustomerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? number,  String? name,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.number,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? number,  String? name,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity():
return $default(_that.id,_that.number,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? number,  String? name,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.number,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerEntity implements CustomerEntity {
  const _CustomerEntity({this.id, this.number, this.name, this.phone});
  factory _CustomerEntity.fromJson(Map<String, dynamic> json) => _$CustomerEntityFromJson(json);

@override final  int? id;
@override final  int? number;
@override final  String? name;
@override final  String? phone;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerEntityCopyWith<_CustomerEntity> get copyWith => __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,name,phone);

@override
String toString() {
  return 'CustomerEntity(id: $id, number: $number, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$CustomerEntityCopyWith<$Res> implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(_CustomerEntity value, $Res Function(_CustomerEntity) _then) = __$CustomerEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? number, String? name, String? phone
});




}
/// @nodoc
class __$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(this._self, this._then);

  final _CustomerEntity _self;
  final $Res Function(_CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? number = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_CustomerEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductPriceEntity {

 ProductEntity? get product; ProductDailyPriceEntity? get productDailyprice;
/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPriceEntityCopyWith<ProductPriceEntity> get copyWith => _$ProductPriceEntityCopyWithImpl<ProductPriceEntity>(this as ProductPriceEntity, _$identity);

  /// Serializes this ProductPriceEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPriceEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.productDailyprice, productDailyprice) || other.productDailyprice == productDailyprice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,productDailyprice);

@override
String toString() {
  return 'ProductPriceEntity(product: $product, productDailyprice: $productDailyprice)';
}


}

/// @nodoc
abstract mixin class $ProductPriceEntityCopyWith<$Res>  {
  factory $ProductPriceEntityCopyWith(ProductPriceEntity value, $Res Function(ProductPriceEntity) _then) = _$ProductPriceEntityCopyWithImpl;
@useResult
$Res call({
 ProductEntity? product, ProductDailyPriceEntity? productDailyprice
});


$ProductEntityCopyWith<$Res>? get product;$ProductDailyPriceEntityCopyWith<$Res>? get productDailyprice;

}
/// @nodoc
class _$ProductPriceEntityCopyWithImpl<$Res>
    implements $ProductPriceEntityCopyWith<$Res> {
  _$ProductPriceEntityCopyWithImpl(this._self, this._then);

  final ProductPriceEntity _self;
  final $Res Function(ProductPriceEntity) _then;

/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? productDailyprice = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,productDailyprice: freezed == productDailyprice ? _self.productDailyprice : productDailyprice // ignore: cast_nullable_to_non_nullable
as ProductDailyPriceEntity?,
  ));
}
/// Create a copy of ProductPriceEntity
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
}/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDailyPriceEntityCopyWith<$Res>? get productDailyprice {
    if (_self.productDailyprice == null) {
    return null;
  }

  return $ProductDailyPriceEntityCopyWith<$Res>(_self.productDailyprice!, (value) {
    return _then(_self.copyWith(productDailyprice: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductPriceEntity].
extension ProductPriceEntityPatterns on ProductPriceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPriceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPriceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPriceEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductPriceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPriceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPriceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductEntity? product,  ProductDailyPriceEntity? productDailyprice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPriceEntity() when $default != null:
return $default(_that.product,_that.productDailyprice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductEntity? product,  ProductDailyPriceEntity? productDailyprice)  $default,) {final _that = this;
switch (_that) {
case _ProductPriceEntity():
return $default(_that.product,_that.productDailyprice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductEntity? product,  ProductDailyPriceEntity? productDailyprice)?  $default,) {final _that = this;
switch (_that) {
case _ProductPriceEntity() when $default != null:
return $default(_that.product,_that.productDailyprice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPriceEntity implements ProductPriceEntity {
  const _ProductPriceEntity({this.product, this.productDailyprice});
  factory _ProductPriceEntity.fromJson(Map<String, dynamic> json) => _$ProductPriceEntityFromJson(json);

@override final  ProductEntity? product;
@override final  ProductDailyPriceEntity? productDailyprice;

/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPriceEntityCopyWith<_ProductPriceEntity> get copyWith => __$ProductPriceEntityCopyWithImpl<_ProductPriceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPriceEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPriceEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.productDailyprice, productDailyprice) || other.productDailyprice == productDailyprice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,productDailyprice);

@override
String toString() {
  return 'ProductPriceEntity(product: $product, productDailyprice: $productDailyprice)';
}


}

/// @nodoc
abstract mixin class _$ProductPriceEntityCopyWith<$Res> implements $ProductPriceEntityCopyWith<$Res> {
  factory _$ProductPriceEntityCopyWith(_ProductPriceEntity value, $Res Function(_ProductPriceEntity) _then) = __$ProductPriceEntityCopyWithImpl;
@override @useResult
$Res call({
 ProductEntity? product, ProductDailyPriceEntity? productDailyprice
});


@override $ProductEntityCopyWith<$Res>? get product;@override $ProductDailyPriceEntityCopyWith<$Res>? get productDailyprice;

}
/// @nodoc
class __$ProductPriceEntityCopyWithImpl<$Res>
    implements _$ProductPriceEntityCopyWith<$Res> {
  __$ProductPriceEntityCopyWithImpl(this._self, this._then);

  final _ProductPriceEntity _self;
  final $Res Function(_ProductPriceEntity) _then;

/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? productDailyprice = freezed,}) {
  return _then(_ProductPriceEntity(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,productDailyprice: freezed == productDailyprice ? _self.productDailyprice : productDailyprice // ignore: cast_nullable_to_non_nullable
as ProductDailyPriceEntity?,
  ));
}

/// Create a copy of ProductPriceEntity
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
}/// Create a copy of ProductPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDailyPriceEntityCopyWith<$Res>? get productDailyprice {
    if (_self.productDailyprice == null) {
    return null;
  }

  return $ProductDailyPriceEntityCopyWith<$Res>(_self.productDailyprice!, (value) {
    return _then(_self.copyWith(productDailyprice: value));
  });
}
}


/// @nodoc
mixin _$ProductDailyPriceEntity {

 int? get id; String? get price; int? get productId; String? get createdAt; String? get updatedAt;
/// Create a copy of ProductDailyPriceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDailyPriceEntityCopyWith<ProductDailyPriceEntity> get copyWith => _$ProductDailyPriceEntityCopyWithImpl<ProductDailyPriceEntity>(this as ProductDailyPriceEntity, _$identity);

  /// Serializes this ProductDailyPriceEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDailyPriceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,productId,createdAt,updatedAt);

@override
String toString() {
  return 'ProductDailyPriceEntity(id: $id, price: $price, productId: $productId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductDailyPriceEntityCopyWith<$Res>  {
  factory $ProductDailyPriceEntityCopyWith(ProductDailyPriceEntity value, $Res Function(ProductDailyPriceEntity) _then) = _$ProductDailyPriceEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? price, int? productId, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$ProductDailyPriceEntityCopyWithImpl<$Res>
    implements $ProductDailyPriceEntityCopyWith<$Res> {
  _$ProductDailyPriceEntityCopyWithImpl(this._self, this._then);

  final ProductDailyPriceEntity _self;
  final $Res Function(ProductDailyPriceEntity) _then;

/// Create a copy of ProductDailyPriceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? price = freezed,Object? productId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDailyPriceEntity].
extension ProductDailyPriceEntityPatterns on ProductDailyPriceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDailyPriceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDailyPriceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDailyPriceEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductDailyPriceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDailyPriceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDailyPriceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? price,  int? productId,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDailyPriceEntity() when $default != null:
return $default(_that.id,_that.price,_that.productId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? price,  int? productId,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductDailyPriceEntity():
return $default(_that.id,_that.price,_that.productId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? price,  int? productId,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductDailyPriceEntity() when $default != null:
return $default(_that.id,_that.price,_that.productId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDailyPriceEntity implements ProductDailyPriceEntity {
  const _ProductDailyPriceEntity({this.id, this.price, this.productId, this.createdAt, this.updatedAt});
  factory _ProductDailyPriceEntity.fromJson(Map<String, dynamic> json) => _$ProductDailyPriceEntityFromJson(json);

@override final  int? id;
@override final  String? price;
@override final  int? productId;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of ProductDailyPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDailyPriceEntityCopyWith<_ProductDailyPriceEntity> get copyWith => __$ProductDailyPriceEntityCopyWithImpl<_ProductDailyPriceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDailyPriceEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDailyPriceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,productId,createdAt,updatedAt);

@override
String toString() {
  return 'ProductDailyPriceEntity(id: $id, price: $price, productId: $productId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductDailyPriceEntityCopyWith<$Res> implements $ProductDailyPriceEntityCopyWith<$Res> {
  factory _$ProductDailyPriceEntityCopyWith(_ProductDailyPriceEntity value, $Res Function(_ProductDailyPriceEntity) _then) = __$ProductDailyPriceEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? price, int? productId, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$ProductDailyPriceEntityCopyWithImpl<$Res>
    implements _$ProductDailyPriceEntityCopyWith<$Res> {
  __$ProductDailyPriceEntityCopyWithImpl(this._self, this._then);

  final _ProductDailyPriceEntity _self;
  final $Res Function(_ProductDailyPriceEntity) _then;

/// Create a copy of ProductDailyPriceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? price = freezed,Object? productId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProductDailyPriceEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductDailyTotalEntity {

 int? get productId; String? get totalWeight; String? get totalAmount;
/// Create a copy of ProductDailyTotalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDailyTotalEntityCopyWith<ProductDailyTotalEntity> get copyWith => _$ProductDailyTotalEntityCopyWithImpl<ProductDailyTotalEntity>(this as ProductDailyTotalEntity, _$identity);

  /// Serializes this ProductDailyTotalEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDailyTotalEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalWeight,totalAmount);

@override
String toString() {
  return 'ProductDailyTotalEntity(productId: $productId, totalWeight: $totalWeight, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $ProductDailyTotalEntityCopyWith<$Res>  {
  factory $ProductDailyTotalEntityCopyWith(ProductDailyTotalEntity value, $Res Function(ProductDailyTotalEntity) _then) = _$ProductDailyTotalEntityCopyWithImpl;
@useResult
$Res call({
 int? productId, String? totalWeight, String? totalAmount
});




}
/// @nodoc
class _$ProductDailyTotalEntityCopyWithImpl<$Res>
    implements $ProductDailyTotalEntityCopyWith<$Res> {
  _$ProductDailyTotalEntityCopyWithImpl(this._self, this._then);

  final ProductDailyTotalEntity _self;
  final $Res Function(ProductDailyTotalEntity) _then;

/// Create a copy of ProductDailyTotalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? totalWeight = freezed,Object? totalAmount = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDailyTotalEntity].
extension ProductDailyTotalEntityPatterns on ProductDailyTotalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDailyTotalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDailyTotalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDailyTotalEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductDailyTotalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDailyTotalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDailyTotalEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? productId,  String? totalWeight,  String? totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDailyTotalEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? productId,  String? totalWeight,  String? totalAmount)  $default,) {final _that = this;
switch (_that) {
case _ProductDailyTotalEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? productId,  String? totalWeight,  String? totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _ProductDailyTotalEntity() when $default != null:
return $default(_that.productId,_that.totalWeight,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDailyTotalEntity implements ProductDailyTotalEntity {
  const _ProductDailyTotalEntity({this.productId, this.totalWeight, this.totalAmount});
  factory _ProductDailyTotalEntity.fromJson(Map<String, dynamic> json) => _$ProductDailyTotalEntityFromJson(json);

@override final  int? productId;
@override final  String? totalWeight;
@override final  String? totalAmount;

/// Create a copy of ProductDailyTotalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDailyTotalEntityCopyWith<_ProductDailyTotalEntity> get copyWith => __$ProductDailyTotalEntityCopyWithImpl<_ProductDailyTotalEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDailyTotalEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDailyTotalEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,totalWeight,totalAmount);

@override
String toString() {
  return 'ProductDailyTotalEntity(productId: $productId, totalWeight: $totalWeight, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$ProductDailyTotalEntityCopyWith<$Res> implements $ProductDailyTotalEntityCopyWith<$Res> {
  factory _$ProductDailyTotalEntityCopyWith(_ProductDailyTotalEntity value, $Res Function(_ProductDailyTotalEntity) _then) = __$ProductDailyTotalEntityCopyWithImpl;
@override @useResult
$Res call({
 int? productId, String? totalWeight, String? totalAmount
});




}
/// @nodoc
class __$ProductDailyTotalEntityCopyWithImpl<$Res>
    implements _$ProductDailyTotalEntityCopyWith<$Res> {
  __$ProductDailyTotalEntityCopyWithImpl(this._self, this._then);

  final _ProductDailyTotalEntity _self;
  final $Res Function(_ProductDailyTotalEntity) _then;

/// Create a copy of ProductDailyTotalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? totalWeight = freezed,Object? totalAmount = freezed,}) {
  return _then(_ProductDailyTotalEntity(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductReturnEntity {

 ProductEntity? get product; String? get totalWeight;
/// Create a copy of ProductReturnEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReturnEntityCopyWith<ProductReturnEntity> get copyWith => _$ProductReturnEntityCopyWithImpl<ProductReturnEntity>(this as ProductReturnEntity, _$identity);

  /// Serializes this ProductReturnEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReturnEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,totalWeight);

@override
String toString() {
  return 'ProductReturnEntity(product: $product, totalWeight: $totalWeight)';
}


}

/// @nodoc
abstract mixin class $ProductReturnEntityCopyWith<$Res>  {
  factory $ProductReturnEntityCopyWith(ProductReturnEntity value, $Res Function(ProductReturnEntity) _then) = _$ProductReturnEntityCopyWithImpl;
@useResult
$Res call({
 ProductEntity? product, String? totalWeight
});


$ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductReturnEntityCopyWithImpl<$Res>
    implements $ProductReturnEntityCopyWith<$Res> {
  _$ProductReturnEntityCopyWithImpl(this._self, this._then);

  final ProductReturnEntity _self;
  final $Res Function(ProductReturnEntity) _then;

/// Create a copy of ProductReturnEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? totalWeight = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductReturnEntity
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


/// Adds pattern-matching-related methods to [ProductReturnEntity].
extension ProductReturnEntityPatterns on ProductReturnEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReturnEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReturnEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReturnEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductReturnEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReturnEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReturnEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductEntity? product,  String? totalWeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReturnEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductEntity? product,  String? totalWeight)  $default,) {final _that = this;
switch (_that) {
case _ProductReturnEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductEntity? product,  String? totalWeight)?  $default,) {final _that = this;
switch (_that) {
case _ProductReturnEntity() when $default != null:
return $default(_that.product,_that.totalWeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReturnEntity implements ProductReturnEntity {
  const _ProductReturnEntity({this.product, this.totalWeight});
  factory _ProductReturnEntity.fromJson(Map<String, dynamic> json) => _$ProductReturnEntityFromJson(json);

@override final  ProductEntity? product;
@override final  String? totalWeight;

/// Create a copy of ProductReturnEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReturnEntityCopyWith<_ProductReturnEntity> get copyWith => __$ProductReturnEntityCopyWithImpl<_ProductReturnEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReturnEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReturnEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,totalWeight);

@override
String toString() {
  return 'ProductReturnEntity(product: $product, totalWeight: $totalWeight)';
}


}

/// @nodoc
abstract mixin class _$ProductReturnEntityCopyWith<$Res> implements $ProductReturnEntityCopyWith<$Res> {
  factory _$ProductReturnEntityCopyWith(_ProductReturnEntity value, $Res Function(_ProductReturnEntity) _then) = __$ProductReturnEntityCopyWithImpl;
@override @useResult
$Res call({
 ProductEntity? product, String? totalWeight
});


@override $ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductReturnEntityCopyWithImpl<$Res>
    implements _$ProductReturnEntityCopyWith<$Res> {
  __$ProductReturnEntityCopyWithImpl(this._self, this._then);

  final _ProductReturnEntity _self;
  final $Res Function(_ProductReturnEntity) _then;

/// Create a copy of ProductReturnEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? totalWeight = freezed,}) {
  return _then(_ProductReturnEntity(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,totalWeight: freezed == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductReturnEntity
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


/// @nodoc
mixin _$ProductEntity {

 int? get id; String? get name;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);

  /// Serializes this ProductEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProductEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ProductEntity():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductEntity implements ProductEntity {
  const _ProductEntity({this.id, this.name});
  factory _ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProductEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ProductEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
