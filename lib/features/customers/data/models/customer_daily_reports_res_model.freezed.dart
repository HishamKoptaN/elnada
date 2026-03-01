// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_daily_reports_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDailyReportsResModel {

@JsonKey(name: 'product_daily_prices') List<ProductPriceModel>? get productDailyPrices;@JsonKey(name: 'customer_daily_reports') List<CustomerDailyReportModel>? get customerDailyReports;
/// Create a copy of CustomerDailyReportsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDailyReportsResModelCopyWith<CustomerDailyReportsResModel> get copyWith => _$CustomerDailyReportsResModelCopyWithImpl<CustomerDailyReportsResModel>(this as CustomerDailyReportsResModel, _$identity);

  /// Serializes this CustomerDailyReportsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDailyReportsResModel&&const DeepCollectionEquality().equals(other.productDailyPrices, productDailyPrices)&&const DeepCollectionEquality().equals(other.customerDailyReports, customerDailyReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(productDailyPrices),const DeepCollectionEquality().hash(customerDailyReports));

@override
String toString() {
  return 'CustomerDailyReportsResModel(productDailyPrices: $productDailyPrices, customerDailyReports: $customerDailyReports)';
}


}

/// @nodoc
abstract mixin class $CustomerDailyReportsResModelCopyWith<$Res>  {
  factory $CustomerDailyReportsResModelCopyWith(CustomerDailyReportsResModel value, $Res Function(CustomerDailyReportsResModel) _then) = _$CustomerDailyReportsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_daily_prices') List<ProductPriceModel>? productDailyPrices,@JsonKey(name: 'customer_daily_reports') List<CustomerDailyReportModel>? customerDailyReports
});




}
/// @nodoc
class _$CustomerDailyReportsResModelCopyWithImpl<$Res>
    implements $CustomerDailyReportsResModelCopyWith<$Res> {
  _$CustomerDailyReportsResModelCopyWithImpl(this._self, this._then);

  final CustomerDailyReportsResModel _self;
  final $Res Function(CustomerDailyReportsResModel) _then;

/// Create a copy of CustomerDailyReportsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productDailyPrices = freezed,Object? customerDailyReports = freezed,}) {
  return _then(_self.copyWith(
productDailyPrices: freezed == productDailyPrices ? _self.productDailyPrices : productDailyPrices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceModel>?,customerDailyReports: freezed == customerDailyReports ? _self.customerDailyReports : customerDailyReports // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerDailyReportsResModel].
extension CustomerDailyReportsResModelPatterns on CustomerDailyReportsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDailyReportsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDailyReportsResModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDailyReportsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_daily_prices')  List<ProductPriceModel>? productDailyPrices, @JsonKey(name: 'customer_daily_reports')  List<CustomerDailyReportModel>? customerDailyReports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel() when $default != null:
return $default(_that.productDailyPrices,_that.customerDailyReports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_daily_prices')  List<ProductPriceModel>? productDailyPrices, @JsonKey(name: 'customer_daily_reports')  List<CustomerDailyReportModel>? customerDailyReports)  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel():
return $default(_that.productDailyPrices,_that.customerDailyReports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_daily_prices')  List<ProductPriceModel>? productDailyPrices, @JsonKey(name: 'customer_daily_reports')  List<CustomerDailyReportModel>? customerDailyReports)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportsResModel() when $default != null:
return $default(_that.productDailyPrices,_that.customerDailyReports);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDailyReportsResModel implements CustomerDailyReportsResModel {
  const _CustomerDailyReportsResModel({@JsonKey(name: 'product_daily_prices') final  List<ProductPriceModel>? productDailyPrices, @JsonKey(name: 'customer_daily_reports') final  List<CustomerDailyReportModel>? customerDailyReports}): _productDailyPrices = productDailyPrices,_customerDailyReports = customerDailyReports;
  factory _CustomerDailyReportsResModel.fromJson(Map<String, dynamic> json) => _$CustomerDailyReportsResModelFromJson(json);

 final  List<ProductPriceModel>? _productDailyPrices;
@override@JsonKey(name: 'product_daily_prices') List<ProductPriceModel>? get productDailyPrices {
  final value = _productDailyPrices;
  if (value == null) return null;
  if (_productDailyPrices is EqualUnmodifiableListView) return _productDailyPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CustomerDailyReportModel>? _customerDailyReports;
@override@JsonKey(name: 'customer_daily_reports') List<CustomerDailyReportModel>? get customerDailyReports {
  final value = _customerDailyReports;
  if (value == null) return null;
  if (_customerDailyReports is EqualUnmodifiableListView) return _customerDailyReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerDailyReportsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDailyReportsResModelCopyWith<_CustomerDailyReportsResModel> get copyWith => __$CustomerDailyReportsResModelCopyWithImpl<_CustomerDailyReportsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDailyReportsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDailyReportsResModel&&const DeepCollectionEquality().equals(other._productDailyPrices, _productDailyPrices)&&const DeepCollectionEquality().equals(other._customerDailyReports, _customerDailyReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productDailyPrices),const DeepCollectionEquality().hash(_customerDailyReports));

@override
String toString() {
  return 'CustomerDailyReportsResModel(productDailyPrices: $productDailyPrices, customerDailyReports: $customerDailyReports)';
}


}

/// @nodoc
abstract mixin class _$CustomerDailyReportsResModelCopyWith<$Res> implements $CustomerDailyReportsResModelCopyWith<$Res> {
  factory _$CustomerDailyReportsResModelCopyWith(_CustomerDailyReportsResModel value, $Res Function(_CustomerDailyReportsResModel) _then) = __$CustomerDailyReportsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_daily_prices') List<ProductPriceModel>? productDailyPrices,@JsonKey(name: 'customer_daily_reports') List<CustomerDailyReportModel>? customerDailyReports
});




}
/// @nodoc
class __$CustomerDailyReportsResModelCopyWithImpl<$Res>
    implements _$CustomerDailyReportsResModelCopyWith<$Res> {
  __$CustomerDailyReportsResModelCopyWithImpl(this._self, this._then);

  final _CustomerDailyReportsResModel _self;
  final $Res Function(_CustomerDailyReportsResModel) _then;

/// Create a copy of CustomerDailyReportsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productDailyPrices = freezed,Object? customerDailyReports = freezed,}) {
  return _then(_CustomerDailyReportsResModel(
productDailyPrices: freezed == productDailyPrices ? _self._productDailyPrices : productDailyPrices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceModel>?,customerDailyReports: freezed == customerDailyReports ? _self._customerDailyReports : customerDailyReports // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportModel>?,
  ));
}


}


/// @nodoc
mixin _$CustomerDailyReportModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'customer') CustomerModel? get customer;@JsonKey(name: 'yesterday_closed_balance') int? get yesterdayClosedBalance;@JsonKey(name: 'product_daily_totals') List<ProductDailyTotalModel>? get productDailyTotals;@JsonKey(name: 'collections') List<CollectionModel>? get collections;@JsonKey(name: 'closing_balance') int? get closingBalance;@JsonKey(name: 'product_orders') List<ProductOrderModel>? get productOrders;
/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDailyReportModelCopyWith<CustomerDailyReportModel> get copyWith => _$CustomerDailyReportModelCopyWithImpl<CustomerDailyReportModel>(this as CustomerDailyReportModel, _$identity);

  /// Serializes this CustomerDailyReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDailyReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other.productDailyTotals, productDailyTotals)&&const DeepCollectionEquality().equals(other.collections, collections)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other.productOrders, productOrders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customer,yesterdayClosedBalance,const DeepCollectionEquality().hash(productDailyTotals),const DeepCollectionEquality().hash(collections),closingBalance,const DeepCollectionEquality().hash(productOrders));

@override
String toString() {
  return 'CustomerDailyReportModel(id: $id, customer: $customer, yesterdayClosedBalance: $yesterdayClosedBalance, productDailyTotals: $productDailyTotals, collections: $collections, closingBalance: $closingBalance, productOrders: $productOrders)';
}


}

/// @nodoc
abstract mixin class $CustomerDailyReportModelCopyWith<$Res>  {
  factory $CustomerDailyReportModelCopyWith(CustomerDailyReportModel value, $Res Function(CustomerDailyReportModel) _then) = _$CustomerDailyReportModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'customer') CustomerModel? customer,@JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,@JsonKey(name: 'product_daily_totals') List<ProductDailyTotalModel>? productDailyTotals,@JsonKey(name: 'collections') List<CollectionModel>? collections,@JsonKey(name: 'closing_balance') int? closingBalance,@JsonKey(name: 'product_orders') List<ProductOrderModel>? productOrders
});


$CustomerModelCopyWith<$Res>? get customer;

}
/// @nodoc
class _$CustomerDailyReportModelCopyWithImpl<$Res>
    implements $CustomerDailyReportModelCopyWith<$Res> {
  _$CustomerDailyReportModelCopyWithImpl(this._self, this._then);

  final CustomerDailyReportModel _self;
  final $Res Function(CustomerDailyReportModel) _then;

/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customer = freezed,Object? yesterdayClosedBalance = freezed,Object? productDailyTotals = freezed,Object? collections = freezed,Object? closingBalance = freezed,Object? productOrders = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerModel?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as int?,productDailyTotals: freezed == productDailyTotals ? _self.productDailyTotals : productDailyTotals // ignore: cast_nullable_to_non_nullable
as List<ProductDailyTotalModel>?,collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as int?,productOrders: freezed == productOrders ? _self.productOrders : productOrders // ignore: cast_nullable_to_non_nullable
as List<ProductOrderModel>?,
  ));
}
/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerModelCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerDailyReportModel].
extension CustomerDailyReportModelPatterns on CustomerDailyReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDailyReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDailyReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDailyReportModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDailyReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDailyReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'customer')  CustomerModel? customer, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'product_daily_totals')  List<ProductDailyTotalModel>? productDailyTotals, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'product_orders')  List<ProductOrderModel>? productOrders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDailyReportModel() when $default != null:
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.collections,_that.closingBalance,_that.productOrders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'customer')  CustomerModel? customer, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'product_daily_totals')  List<ProductDailyTotalModel>? productDailyTotals, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'product_orders')  List<ProductOrderModel>? productOrders)  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportModel():
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.collections,_that.closingBalance,_that.productOrders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'customer')  CustomerModel? customer, @JsonKey(name: 'yesterday_closed_balance')  int? yesterdayClosedBalance, @JsonKey(name: 'product_daily_totals')  List<ProductDailyTotalModel>? productDailyTotals, @JsonKey(name: 'collections')  List<CollectionModel>? collections, @JsonKey(name: 'closing_balance')  int? closingBalance, @JsonKey(name: 'product_orders')  List<ProductOrderModel>? productOrders)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDailyReportModel() when $default != null:
return $default(_that.id,_that.customer,_that.yesterdayClosedBalance,_that.productDailyTotals,_that.collections,_that.closingBalance,_that.productOrders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDailyReportModel implements CustomerDailyReportModel {
  const _CustomerDailyReportModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'customer') this.customer, @JsonKey(name: 'yesterday_closed_balance') this.yesterdayClosedBalance, @JsonKey(name: 'product_daily_totals') final  List<ProductDailyTotalModel>? productDailyTotals, @JsonKey(name: 'collections') final  List<CollectionModel>? collections, @JsonKey(name: 'closing_balance') this.closingBalance, @JsonKey(name: 'product_orders') final  List<ProductOrderModel>? productOrders}): _productDailyTotals = productDailyTotals,_collections = collections,_productOrders = productOrders;
  factory _CustomerDailyReportModel.fromJson(Map<String, dynamic> json) => _$CustomerDailyReportModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'customer') final  CustomerModel? customer;
@override@JsonKey(name: 'yesterday_closed_balance') final  int? yesterdayClosedBalance;
 final  List<ProductDailyTotalModel>? _productDailyTotals;
@override@JsonKey(name: 'product_daily_totals') List<ProductDailyTotalModel>? get productDailyTotals {
  final value = _productDailyTotals;
  if (value == null) return null;
  if (_productDailyTotals is EqualUnmodifiableListView) return _productDailyTotals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CollectionModel>? _collections;
@override@JsonKey(name: 'collections') List<CollectionModel>? get collections {
  final value = _collections;
  if (value == null) return null;
  if (_collections is EqualUnmodifiableListView) return _collections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'closing_balance') final  int? closingBalance;
 final  List<ProductOrderModel>? _productOrders;
@override@JsonKey(name: 'product_orders') List<ProductOrderModel>? get productOrders {
  final value = _productOrders;
  if (value == null) return null;
  if (_productOrders is EqualUnmodifiableListView) return _productOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDailyReportModelCopyWith<_CustomerDailyReportModel> get copyWith => __$CustomerDailyReportModelCopyWithImpl<_CustomerDailyReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDailyReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDailyReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.yesterdayClosedBalance, yesterdayClosedBalance) || other.yesterdayClosedBalance == yesterdayClosedBalance)&&const DeepCollectionEquality().equals(other._productDailyTotals, _productDailyTotals)&&const DeepCollectionEquality().equals(other._collections, _collections)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other._productOrders, _productOrders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customer,yesterdayClosedBalance,const DeepCollectionEquality().hash(_productDailyTotals),const DeepCollectionEquality().hash(_collections),closingBalance,const DeepCollectionEquality().hash(_productOrders));

@override
String toString() {
  return 'CustomerDailyReportModel(id: $id, customer: $customer, yesterdayClosedBalance: $yesterdayClosedBalance, productDailyTotals: $productDailyTotals, collections: $collections, closingBalance: $closingBalance, productOrders: $productOrders)';
}


}

/// @nodoc
abstract mixin class _$CustomerDailyReportModelCopyWith<$Res> implements $CustomerDailyReportModelCopyWith<$Res> {
  factory _$CustomerDailyReportModelCopyWith(_CustomerDailyReportModel value, $Res Function(_CustomerDailyReportModel) _then) = __$CustomerDailyReportModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'customer') CustomerModel? customer,@JsonKey(name: 'yesterday_closed_balance') int? yesterdayClosedBalance,@JsonKey(name: 'product_daily_totals') List<ProductDailyTotalModel>? productDailyTotals,@JsonKey(name: 'collections') List<CollectionModel>? collections,@JsonKey(name: 'closing_balance') int? closingBalance,@JsonKey(name: 'product_orders') List<ProductOrderModel>? productOrders
});


@override $CustomerModelCopyWith<$Res>? get customer;

}
/// @nodoc
class __$CustomerDailyReportModelCopyWithImpl<$Res>
    implements _$CustomerDailyReportModelCopyWith<$Res> {
  __$CustomerDailyReportModelCopyWithImpl(this._self, this._then);

  final _CustomerDailyReportModel _self;
  final $Res Function(_CustomerDailyReportModel) _then;

/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customer = freezed,Object? yesterdayClosedBalance = freezed,Object? productDailyTotals = freezed,Object? collections = freezed,Object? closingBalance = freezed,Object? productOrders = freezed,}) {
  return _then(_CustomerDailyReportModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerModel?,yesterdayClosedBalance: freezed == yesterdayClosedBalance ? _self.yesterdayClosedBalance : yesterdayClosedBalance // ignore: cast_nullable_to_non_nullable
as int?,productDailyTotals: freezed == productDailyTotals ? _self._productDailyTotals : productDailyTotals // ignore: cast_nullable_to_non_nullable
as List<ProductDailyTotalModel>?,collections: freezed == collections ? _self._collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,closingBalance: freezed == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as int?,productOrders: freezed == productOrders ? _self._productOrders : productOrders // ignore: cast_nullable_to_non_nullable
as List<ProductOrderModel>?,
  ));
}

/// Create a copy of CustomerDailyReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerModelCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// @nodoc
mixin _$CustomerModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'number') int? get number;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<CustomerModel> get copyWith => _$CustomerModelCopyWithImpl<CustomerModel>(this as CustomerModel, _$identity);

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,name,phone,createdAt,updatedAt);

@override
String toString() {
  return 'CustomerModel(id: $id, number: $number, name: $name, phone: $phone, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomerModelCopyWith<$Res>  {
  factory $CustomerModelCopyWith(CustomerModel value, $Res Function(CustomerModel) _then) = _$CustomerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'number') int? number,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._self, this._then);

  final CustomerModel _self;
  final $Res Function(CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? number = freezed,Object? name = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerModel].
extension CustomerModelPatterns on CustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.id,_that.number,_that.name,_that.phone,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerModel():
return $default(_that.id,_that.number,_that.name,_that.phone,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.id,_that.number,_that.name,_that.phone,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerModel implements CustomerModel {
  const _CustomerModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'number') this.number, @JsonKey(name: 'name') this.name, @JsonKey(name: 'phone') this.phone, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'number') final  int? number;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerModelCopyWith<_CustomerModel> get copyWith => __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,name,phone,createdAt,updatedAt);

@override
String toString() {
  return 'CustomerModel(id: $id, number: $number, name: $name, phone: $phone, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerModelCopyWith<$Res> implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(_CustomerModel value, $Res Function(_CustomerModel) _then) = __$CustomerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'number') int? number,@JsonKey(name: 'name') String? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(this._self, this._then);

  final _CustomerModel _self;
  final $Res Function(_CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? number = freezed,Object? name = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CustomerModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductPriceModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'product_name') String? get productName;@JsonKey(name: 'price') double? get price;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of ProductPriceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPriceModelCopyWith<ProductPriceModel> get copyWith => _$ProductPriceModelCopyWithImpl<ProductPriceModel>(this as ProductPriceModel, _$identity);

  /// Serializes this ProductPriceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPriceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.price, price) || other.price == price)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,price,createdAt,updatedAt);

@override
String toString() {
  return 'ProductPriceModel(id: $id, productId: $productId, productName: $productName, price: $price, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductPriceModelCopyWith<$Res>  {
  factory $ProductPriceModelCopyWith(ProductPriceModel value, $Res Function(ProductPriceModel) _then) = _$ProductPriceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'price') double? price,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$ProductPriceModelCopyWithImpl<$Res>
    implements $ProductPriceModelCopyWith<$Res> {
  _$ProductPriceModelCopyWithImpl(this._self, this._then);

  final ProductPriceModel _self;
  final $Res Function(ProductPriceModel) _then;

/// Create a copy of ProductPriceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? productName = freezed,Object? price = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPriceModel].
extension ProductPriceModelPatterns on ProductPriceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPriceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPriceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPriceModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductPriceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPriceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPriceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'price')  double? price, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPriceModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.price,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'price')  double? price, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductPriceModel():
return $default(_that.id,_that.productId,_that.productName,_that.price,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'price')  double? price, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductPriceModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.price,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPriceModel implements ProductPriceModel {
  const _ProductPriceModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'product_name') this.productName, @JsonKey(name: 'price') this.price, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _ProductPriceModel.fromJson(Map<String, dynamic> json) => _$ProductPriceModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'product_name') final  String? productName;
@override@JsonKey(name: 'price') final  double? price;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of ProductPriceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPriceModelCopyWith<_ProductPriceModel> get copyWith => __$ProductPriceModelCopyWithImpl<_ProductPriceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPriceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPriceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.price, price) || other.price == price)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,price,createdAt,updatedAt);

@override
String toString() {
  return 'ProductPriceModel(id: $id, productId: $productId, productName: $productName, price: $price, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductPriceModelCopyWith<$Res> implements $ProductPriceModelCopyWith<$Res> {
  factory _$ProductPriceModelCopyWith(_ProductPriceModel value, $Res Function(_ProductPriceModel) _then) = __$ProductPriceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'price') double? price,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$ProductPriceModelCopyWithImpl<$Res>
    implements _$ProductPriceModelCopyWith<$Res> {
  __$ProductPriceModelCopyWithImpl(this._self, this._then);

  final _ProductPriceModel _self;
  final $Res Function(_ProductPriceModel) _then;

/// Create a copy of ProductPriceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? productName = freezed,Object? price = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProductPriceModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
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
mixin _$CollectionModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'amount') int? get amount;
/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionModelCopyWith<CollectionModel> get copyWith => _$CollectionModelCopyWithImpl<CollectionModel>(this as CollectionModel, _$identity);

  /// Serializes this CollectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'CollectionModel(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $CollectionModelCopyWith<$Res>  {
  factory $CollectionModelCopyWith(CollectionModel value, $Res Function(CollectionModel) _then) = _$CollectionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') int? amount
});




}
/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._self, this._then);

  final CollectionModel _self;
  final $Res Function(CollectionModel) _then;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionModel].
extension CollectionModelPatterns on CollectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionModel value)  $default,){
final _that = this;
switch (_that) {
case _CollectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
return $default(_that.id,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount)  $default,) {final _that = this;
switch (_that) {
case _CollectionModel():
return $default(_that.id,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount)?  $default,) {final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
return $default(_that.id,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionModel implements CollectionModel {
  const _CollectionModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'amount') this.amount});
  factory _CollectionModel.fromJson(Map<String, dynamic> json) => _$CollectionModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'amount') final  int? amount;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionModelCopyWith<_CollectionModel> get copyWith => __$CollectionModelCopyWithImpl<_CollectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount);

@override
String toString() {
  return 'CollectionModel(id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$CollectionModelCopyWith<$Res> implements $CollectionModelCopyWith<$Res> {
  factory _$CollectionModelCopyWith(_CollectionModel value, $Res Function(_CollectionModel) _then) = __$CollectionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') int? amount
});




}
/// @nodoc
class __$CollectionModelCopyWithImpl<$Res>
    implements _$CollectionModelCopyWith<$Res> {
  __$CollectionModelCopyWithImpl(this._self, this._then);

  final _CollectionModel _self;
  final $Res Function(_CollectionModel) _then;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,}) {
  return _then(_CollectionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
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

// dart format on
