// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomersEvent()';
}


}

/// @nodoc
class $CustomersEventCopyWith<$Res>  {
$CustomersEventCopyWith(CustomersEvent _, $Res Function(CustomersEvent) __);
}


/// Adds pattern-matching-related methods to [CustomersEvent].
extension CustomersEventPatterns on CustomersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCustomers value)?  getCustomers,TResult Function( _SearchCustomers value)?  searchCustomers,TResult Function( _DisposeSearch value)?  disposeSearch,TResult Function( _PriceChanged value)?  priceChanged,TResult Function( _UpdateCustomerDailyReport value)?  updateCustomerDailyReport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCustomers() when getCustomers != null:
return getCustomers(_that);case _SearchCustomers() when searchCustomers != null:
return searchCustomers(_that);case _DisposeSearch() when disposeSearch != null:
return disposeSearch(_that);case _PriceChanged() when priceChanged != null:
return priceChanged(_that);case _UpdateCustomerDailyReport() when updateCustomerDailyReport != null:
return updateCustomerDailyReport(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCustomers value)  getCustomers,required TResult Function( _SearchCustomers value)  searchCustomers,required TResult Function( _DisposeSearch value)  disposeSearch,required TResult Function( _PriceChanged value)  priceChanged,required TResult Function( _UpdateCustomerDailyReport value)  updateCustomerDailyReport,}){
final _that = this;
switch (_that) {
case _GetCustomers():
return getCustomers(_that);case _SearchCustomers():
return searchCustomers(_that);case _DisposeSearch():
return disposeSearch(_that);case _PriceChanged():
return priceChanged(_that);case _UpdateCustomerDailyReport():
return updateCustomerDailyReport(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCustomers value)?  getCustomers,TResult? Function( _SearchCustomers value)?  searchCustomers,TResult? Function( _DisposeSearch value)?  disposeSearch,TResult? Function( _PriceChanged value)?  priceChanged,TResult? Function( _UpdateCustomerDailyReport value)?  updateCustomerDailyReport,}){
final _that = this;
switch (_that) {
case _GetCustomers() when getCustomers != null:
return getCustomers(_that);case _SearchCustomers() when searchCustomers != null:
return searchCustomers(_that);case _DisposeSearch() when disposeSearch != null:
return disposeSearch(_that);case _PriceChanged() when priceChanged != null:
return priceChanged(_that);case _UpdateCustomerDailyReport() when updateCustomerDailyReport != null:
return updateCustomerDailyReport(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime date)?  getCustomers,TResult Function( DateTime selectedDate,  String query)?  searchCustomers,TResult Function()?  disposeSearch,TResult Function( ProductPriceEntity productPrice)?  priceChanged,TResult Function( CustomerDailyReportEntity customerDailyReport)?  updateCustomerDailyReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCustomers() when getCustomers != null:
return getCustomers(_that.date);case _SearchCustomers() when searchCustomers != null:
return searchCustomers(_that.selectedDate,_that.query);case _DisposeSearch() when disposeSearch != null:
return disposeSearch();case _PriceChanged() when priceChanged != null:
return priceChanged(_that.productPrice);case _UpdateCustomerDailyReport() when updateCustomerDailyReport != null:
return updateCustomerDailyReport(_that.customerDailyReport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime date)  getCustomers,required TResult Function( DateTime selectedDate,  String query)  searchCustomers,required TResult Function()  disposeSearch,required TResult Function( ProductPriceEntity productPrice)  priceChanged,required TResult Function( CustomerDailyReportEntity customerDailyReport)  updateCustomerDailyReport,}) {final _that = this;
switch (_that) {
case _GetCustomers():
return getCustomers(_that.date);case _SearchCustomers():
return searchCustomers(_that.selectedDate,_that.query);case _DisposeSearch():
return disposeSearch();case _PriceChanged():
return priceChanged(_that.productPrice);case _UpdateCustomerDailyReport():
return updateCustomerDailyReport(_that.customerDailyReport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime date)?  getCustomers,TResult? Function( DateTime selectedDate,  String query)?  searchCustomers,TResult? Function()?  disposeSearch,TResult? Function( ProductPriceEntity productPrice)?  priceChanged,TResult? Function( CustomerDailyReportEntity customerDailyReport)?  updateCustomerDailyReport,}) {final _that = this;
switch (_that) {
case _GetCustomers() when getCustomers != null:
return getCustomers(_that.date);case _SearchCustomers() when searchCustomers != null:
return searchCustomers(_that.selectedDate,_that.query);case _DisposeSearch() when disposeSearch != null:
return disposeSearch();case _PriceChanged() when priceChanged != null:
return priceChanged(_that.productPrice);case _UpdateCustomerDailyReport() when updateCustomerDailyReport != null:
return updateCustomerDailyReport(_that.customerDailyReport);case _:
  return null;

}
}

}

/// @nodoc


class _GetCustomers implements CustomersEvent {
  const _GetCustomers({required this.date});
  

 final  DateTime date;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCustomersCopyWith<_GetCustomers> get copyWith => __$GetCustomersCopyWithImpl<_GetCustomers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCustomers&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'CustomersEvent.getCustomers(date: $date)';
}


}

/// @nodoc
abstract mixin class _$GetCustomersCopyWith<$Res> implements $CustomersEventCopyWith<$Res> {
  factory _$GetCustomersCopyWith(_GetCustomers value, $Res Function(_GetCustomers) _then) = __$GetCustomersCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$GetCustomersCopyWithImpl<$Res>
    implements _$GetCustomersCopyWith<$Res> {
  __$GetCustomersCopyWithImpl(this._self, this._then);

  final _GetCustomers _self;
  final $Res Function(_GetCustomers) _then;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_GetCustomers(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _SearchCustomers implements CustomersEvent {
  const _SearchCustomers({required this.selectedDate, required this.query});
  

 final  DateTime selectedDate;
 final  String query;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCustomersCopyWith<_SearchCustomers> get copyWith => __$SearchCustomersCopyWithImpl<_SearchCustomers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCustomers&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,query);

@override
String toString() {
  return 'CustomersEvent.searchCustomers(selectedDate: $selectedDate, query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCustomersCopyWith<$Res> implements $CustomersEventCopyWith<$Res> {
  factory _$SearchCustomersCopyWith(_SearchCustomers value, $Res Function(_SearchCustomers) _then) = __$SearchCustomersCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDate, String query
});




}
/// @nodoc
class __$SearchCustomersCopyWithImpl<$Res>
    implements _$SearchCustomersCopyWith<$Res> {
  __$SearchCustomersCopyWithImpl(this._self, this._then);

  final _SearchCustomers _self;
  final $Res Function(_SearchCustomers) _then;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDate = null,Object? query = null,}) {
  return _then(_SearchCustomers(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DisposeSearch implements CustomersEvent {
  const _DisposeSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisposeSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomersEvent.disposeSearch()';
}


}




/// @nodoc


class _PriceChanged implements CustomersEvent {
  const _PriceChanged({required this.productPrice});
  

 final  ProductPriceEntity productPrice;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceChangedCopyWith<_PriceChanged> get copyWith => __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceChanged&&(identical(other.productPrice, productPrice) || other.productPrice == productPrice));
}


@override
int get hashCode => Object.hash(runtimeType,productPrice);

@override
String toString() {
  return 'CustomersEvent.priceChanged(productPrice: $productPrice)';
}


}

/// @nodoc
abstract mixin class _$PriceChangedCopyWith<$Res> implements $CustomersEventCopyWith<$Res> {
  factory _$PriceChangedCopyWith(_PriceChanged value, $Res Function(_PriceChanged) _then) = __$PriceChangedCopyWithImpl;
@useResult
$Res call({
 ProductPriceEntity productPrice
});




}
/// @nodoc
class __$PriceChangedCopyWithImpl<$Res>
    implements _$PriceChangedCopyWith<$Res> {
  __$PriceChangedCopyWithImpl(this._self, this._then);

  final _PriceChanged _self;
  final $Res Function(_PriceChanged) _then;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productPrice = null,}) {
  return _then(_PriceChanged(
productPrice: null == productPrice ? _self.productPrice : productPrice // ignore: cast_nullable_to_non_nullable
as ProductPriceEntity,
  ));
}


}

/// @nodoc


class _UpdateCustomerDailyReport implements CustomersEvent {
  const _UpdateCustomerDailyReport({required this.customerDailyReport});
  

 final  CustomerDailyReportEntity customerDailyReport;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCustomerDailyReportCopyWith<_UpdateCustomerDailyReport> get copyWith => __$UpdateCustomerDailyReportCopyWithImpl<_UpdateCustomerDailyReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCustomerDailyReport&&(identical(other.customerDailyReport, customerDailyReport) || other.customerDailyReport == customerDailyReport));
}


@override
int get hashCode => Object.hash(runtimeType,customerDailyReport);

@override
String toString() {
  return 'CustomersEvent.updateCustomerDailyReport(customerDailyReport: $customerDailyReport)';
}


}

/// @nodoc
abstract mixin class _$UpdateCustomerDailyReportCopyWith<$Res> implements $CustomersEventCopyWith<$Res> {
  factory _$UpdateCustomerDailyReportCopyWith(_UpdateCustomerDailyReport value, $Res Function(_UpdateCustomerDailyReport) _then) = __$UpdateCustomerDailyReportCopyWithImpl;
@useResult
$Res call({
 CustomerDailyReportEntity customerDailyReport
});




}
/// @nodoc
class __$UpdateCustomerDailyReportCopyWithImpl<$Res>
    implements _$UpdateCustomerDailyReportCopyWith<$Res> {
  __$UpdateCustomerDailyReportCopyWithImpl(this._self, this._then);

  final _UpdateCustomerDailyReport _self;
  final $Res Function(_UpdateCustomerDailyReport) _then;

/// Create a copy of CustomersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customerDailyReport = null,}) {
  return _then(_UpdateCustomerDailyReport(
customerDailyReport: null == customerDailyReport ? _self.customerDailyReport : customerDailyReport // ignore: cast_nullable_to_non_nullable
as CustomerDailyReportEntity,
  ));
}


}

/// @nodoc
mixin _$CustomersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomersState()';
}


}

/// @nodoc
class $CustomersStateCopyWith<$Res>  {
$CustomersStateCopyWith(CustomersState _, $Res Function(CustomersState) __);
}


/// Adds pattern-matching-related methods to [CustomersState].
extension CustomersStatePatterns on CustomersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DateTime selectedDate,  CustomersResEntity customersRes)?  loaded,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.selectedDate,_that.customersRes);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DateTime selectedDate,  CustomersResEntity customersRes)  loaded,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.selectedDate,_that.customersRes);case _Failure():
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DateTime selectedDate,  CustomersResEntity customersRes)?  loaded,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.selectedDate,_that.customersRes);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CustomersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomersState.initial()';
}


}




/// @nodoc


class _Loading implements CustomersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomersState.loading()';
}


}




/// @nodoc


class _Loaded implements CustomersState {
  const _Loaded({required this.selectedDate, required this.customersRes});
  

 final  DateTime selectedDate;
 final  CustomersResEntity customersRes;

/// Create a copy of CustomersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.customersRes, customersRes) || other.customersRes == customersRes));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,customersRes);

@override
String toString() {
  return 'CustomersState.loaded(selectedDate: $selectedDate, customersRes: $customersRes)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $CustomersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDate, CustomersResEntity customersRes
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of CustomersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDate = null,Object? customersRes = null,}) {
  return _then(_Loaded(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,customersRes: null == customersRes ? _self.customersRes : customersRes // ignore: cast_nullable_to_non_nullable
as CustomersResEntity,
  ));
}


}

/// @nodoc


class _Failure implements CustomersState {
  const _Failure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CustomersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CustomersState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CustomersStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CustomersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
