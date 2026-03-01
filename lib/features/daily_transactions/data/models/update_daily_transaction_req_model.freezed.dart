// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_daily_transaction_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDailyTransactionReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'weight') double get weight;@JsonKey(name: 'cage') int get cage;@JsonKey(name: 'discount') double get discount;
/// Create a copy of UpdateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDailyTransactionReqModelCopyWith<UpdateDailyTransactionReqModel> get copyWith => _$UpdateDailyTransactionReqModelCopyWithImpl<UpdateDailyTransactionReqModel>(this as UpdateDailyTransactionReqModel, _$identity);

  /// Serializes this UpdateDailyTransactionReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDailyTransactionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,weight,cage,discount);

@override
String toString() {
  return 'UpdateDailyTransactionReqModel(customerId: $customerId, weight: $weight, cage: $cage, discount: $discount)';
}


}

/// @nodoc
abstract mixin class $UpdateDailyTransactionReqModelCopyWith<$Res>  {
  factory $UpdateDailyTransactionReqModelCopyWith(UpdateDailyTransactionReqModel value, $Res Function(UpdateDailyTransactionReqModel) _then) = _$UpdateDailyTransactionReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage,@JsonKey(name: 'discount') double discount
});




}
/// @nodoc
class _$UpdateDailyTransactionReqModelCopyWithImpl<$Res>
    implements $UpdateDailyTransactionReqModelCopyWith<$Res> {
  _$UpdateDailyTransactionReqModelCopyWithImpl(this._self, this._then);

  final UpdateDailyTransactionReqModel _self;
  final $Res Function(UpdateDailyTransactionReqModel) _then;

/// Create a copy of UpdateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? weight = null,Object? cage = null,Object? discount = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDailyTransactionReqModel].
extension UpdateDailyTransactionReqModelPatterns on UpdateDailyTransactionReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDailyTransactionReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDailyTransactionReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDailyTransactionReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  double discount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel() when $default != null:
return $default(_that.customerId,_that.weight,_that.cage,_that.discount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  double discount)  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel():
return $default(_that.customerId,_that.weight,_that.cage,_that.discount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage, @JsonKey(name: 'discount')  double discount)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyTransactionReqModel() when $default != null:
return $default(_that.customerId,_that.weight,_that.cage,_that.discount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDailyTransactionReqModel implements UpdateDailyTransactionReqModel {
  const _UpdateDailyTransactionReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'cage') required this.cage, @JsonKey(name: 'discount') required this.discount});
  factory _UpdateDailyTransactionReqModel.fromJson(Map<String, dynamic> json) => _$UpdateDailyTransactionReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'weight') final  double weight;
@override@JsonKey(name: 'cage') final  int cage;
@override@JsonKey(name: 'discount') final  double discount;

/// Create a copy of UpdateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDailyTransactionReqModelCopyWith<_UpdateDailyTransactionReqModel> get copyWith => __$UpdateDailyTransactionReqModelCopyWithImpl<_UpdateDailyTransactionReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDailyTransactionReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDailyTransactionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,weight,cage,discount);

@override
String toString() {
  return 'UpdateDailyTransactionReqModel(customerId: $customerId, weight: $weight, cage: $cage, discount: $discount)';
}


}

/// @nodoc
abstract mixin class _$UpdateDailyTransactionReqModelCopyWith<$Res> implements $UpdateDailyTransactionReqModelCopyWith<$Res> {
  factory _$UpdateDailyTransactionReqModelCopyWith(_UpdateDailyTransactionReqModel value, $Res Function(_UpdateDailyTransactionReqModel) _then) = __$UpdateDailyTransactionReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage,@JsonKey(name: 'discount') double discount
});




}
/// @nodoc
class __$UpdateDailyTransactionReqModelCopyWithImpl<$Res>
    implements _$UpdateDailyTransactionReqModelCopyWith<$Res> {
  __$UpdateDailyTransactionReqModelCopyWithImpl(this._self, this._then);

  final _UpdateDailyTransactionReqModel _self;
  final $Res Function(_UpdateDailyTransactionReqModel) _then;

/// Create a copy of UpdateDailyTransactionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? weight = null,Object? cage = null,Object? discount = null,}) {
  return _then(_UpdateDailyTransactionReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
