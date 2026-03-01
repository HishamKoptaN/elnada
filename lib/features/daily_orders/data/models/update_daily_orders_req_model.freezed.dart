// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_daily_orders_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDailyOrderReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'count') int get count;
/// Create a copy of UpdateDailyOrderReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDailyOrderReqModelCopyWith<UpdateDailyOrderReqModel> get copyWith => _$UpdateDailyOrderReqModelCopyWithImpl<UpdateDailyOrderReqModel>(this as UpdateDailyOrderReqModel, _$identity);

  /// Serializes this UpdateDailyOrderReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDailyOrderReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,count);

@override
String toString() {
  return 'UpdateDailyOrderReqModel(customerId: $customerId, productId: $productId, count: $count)';
}


}

/// @nodoc
abstract mixin class $UpdateDailyOrderReqModelCopyWith<$Res>  {
  factory $UpdateDailyOrderReqModelCopyWith(UpdateDailyOrderReqModel value, $Res Function(UpdateDailyOrderReqModel) _then) = _$UpdateDailyOrderReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'count') int count
});




}
/// @nodoc
class _$UpdateDailyOrderReqModelCopyWithImpl<$Res>
    implements $UpdateDailyOrderReqModelCopyWith<$Res> {
  _$UpdateDailyOrderReqModelCopyWithImpl(this._self, this._then);

  final UpdateDailyOrderReqModel _self;
  final $Res Function(UpdateDailyOrderReqModel) _then;

/// Create a copy of UpdateDailyOrderReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? productId = null,Object? count = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDailyOrderReqModel].
extension UpdateDailyOrderReqModelPatterns on UpdateDailyOrderReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDailyOrderReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDailyOrderReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDailyOrderReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'count')  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'count')  int count)  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel():
return $default(_that.customerId,_that.productId,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'count')  int count)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyOrderReqModel() when $default != null:
return $default(_that.customerId,_that.productId,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDailyOrderReqModel implements UpdateDailyOrderReqModel {
  const _UpdateDailyOrderReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'count') required this.count});
  factory _UpdateDailyOrderReqModel.fromJson(Map<String, dynamic> json) => _$UpdateDailyOrderReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'count') final  int count;

/// Create a copy of UpdateDailyOrderReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDailyOrderReqModelCopyWith<_UpdateDailyOrderReqModel> get copyWith => __$UpdateDailyOrderReqModelCopyWithImpl<_UpdateDailyOrderReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDailyOrderReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDailyOrderReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,productId,count);

@override
String toString() {
  return 'UpdateDailyOrderReqModel(customerId: $customerId, productId: $productId, count: $count)';
}


}

/// @nodoc
abstract mixin class _$UpdateDailyOrderReqModelCopyWith<$Res> implements $UpdateDailyOrderReqModelCopyWith<$Res> {
  factory _$UpdateDailyOrderReqModelCopyWith(_UpdateDailyOrderReqModel value, $Res Function(_UpdateDailyOrderReqModel) _then) = __$UpdateDailyOrderReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'count') int count
});




}
/// @nodoc
class __$UpdateDailyOrderReqModelCopyWithImpl<$Res>
    implements _$UpdateDailyOrderReqModelCopyWith<$Res> {
  __$UpdateDailyOrderReqModelCopyWithImpl(this._self, this._then);

  final _UpdateDailyOrderReqModel _self;
  final $Res Function(_UpdateDailyOrderReqModel) _then;

/// Create a copy of UpdateDailyOrderReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? productId = null,Object? count = null,}) {
  return _then(_UpdateDailyOrderReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
