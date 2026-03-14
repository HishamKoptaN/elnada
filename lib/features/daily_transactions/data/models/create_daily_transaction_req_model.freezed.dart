// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_daily_transaction_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDailyTransactionReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'weight') double get weight;@JsonKey(name: 'cage') int get cage;@JsonKey(name: 'discount') int? get discount;@JsonKey(name: 'date') DateTime? get date;
/// Create a copy of CreateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDailyTransactionReqModelCopyWith<CreateDailyTransactionReqModel> get copyWith => _$CreateDailyTransactionReqModelCopyWithImpl<CreateDailyTransactionReqModel>(this as CreateDailyTransactionReqModel, _$identity);

  /// Serializes this CreateDailyTransactionReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDailyTransactionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,weight,cage,discount,date);

@override
String toString() {
  return 'CreateDailyTransactionReqModel(customerId: $customerId, productId: $productId, weight: $weight, cage: $cage, discount: $discount, date: $date)';
}


}

/// @nodoc
abstract mixin class $CreateDailyTransactionReqModelCopyWith<$Res>  {
  factory $CreateDailyTransactionReqModelCopyWith(CreateDailyTransactionReqModel value, $Res Function(CreateDailyTransactionReqModel) _then) = _$CreateDailyTransactionReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage,@JsonKey(name: 'discount') int? discount,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class _$CreateDailyTransactionReqModelCopyWithImpl<$Res>
    implements $CreateDailyTransactionReqModelCopyWith<$Res> {
  _$CreateDailyTransactionReqModelCopyWithImpl(this._self, this._then);

  final CreateDailyTransactionReqModel _self;
  final $Res Function(CreateDailyTransactionReqModel) _then;

/// Create a copy of CreateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? productId = null,Object? weight = null,Object? cage = null,Object? discount = freezed,Object? date = freezed,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDailyTransactionReqModel].
extension CreateDailyTransactionReqModelPatterns on CreateDailyTransactionReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDailyTransactionReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDailyTransactionReqModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDailyTransactionReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'date')  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.weight,_that.cage,_that.discount,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'date')  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel():
return $default(_that.customerId,_that.productId,_that.weight,_that.cage,_that.discount,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  int? discount, @JsonKey(name: 'date')  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _CreateDailyTransactionReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.weight,_that.cage,_that.discount,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDailyTransactionReqModel implements CreateDailyTransactionReqModel {
  const _CreateDailyTransactionReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'cage') required this.cage, @JsonKey(name: 'discount') this.discount, @JsonKey(name: 'date') this.date});
  factory _CreateDailyTransactionReqModel.fromJson(Map<String, dynamic> json) => _$CreateDailyTransactionReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'weight') final  double weight;
@override@JsonKey(name: 'cage') final  int cage;
@override@JsonKey(name: 'discount') final  int? discount;
@override@JsonKey(name: 'date') final  DateTime? date;

/// Create a copy of CreateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDailyTransactionReqModelCopyWith<_CreateDailyTransactionReqModel> get copyWith => __$CreateDailyTransactionReqModelCopyWithImpl<_CreateDailyTransactionReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDailyTransactionReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDailyTransactionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,weight,cage,discount,date);

@override
String toString() {
  return 'CreateDailyTransactionReqModel(customerId: $customerId, productId: $productId, weight: $weight, cage: $cage, discount: $discount, date: $date)';
}


}

/// @nodoc
abstract mixin class _$CreateDailyTransactionReqModelCopyWith<$Res> implements $CreateDailyTransactionReqModelCopyWith<$Res> {
  factory _$CreateDailyTransactionReqModelCopyWith(_CreateDailyTransactionReqModel value, $Res Function(_CreateDailyTransactionReqModel) _then) = __$CreateDailyTransactionReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage,@JsonKey(name: 'discount') int? discount,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class __$CreateDailyTransactionReqModelCopyWithImpl<$Res>
    implements _$CreateDailyTransactionReqModelCopyWith<$Res> {
  __$CreateDailyTransactionReqModelCopyWithImpl(this._self, this._then);

  final _CreateDailyTransactionReqModel _self;
  final $Res Function(_CreateDailyTransactionReqModel) _then;

/// Create a copy of CreateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? productId = null,Object? weight = null,Object? cage = null,Object? discount = freezed,Object? date = freezed,}) {
  return _then(_CreateDailyTransactionReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
