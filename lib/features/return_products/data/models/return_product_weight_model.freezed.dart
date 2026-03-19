// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_product_weight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnProductWeightReqModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'product_id') int get productId;@JsonKey(name: 'weight') double get weight;@JsonKey(name: 'date') DateTime? get date;
/// Create a copy of ReturnProductWeightReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnProductWeightReqModelCopyWith<ReturnProductWeightReqModel> get copyWith => _$ReturnProductWeightReqModelCopyWithImpl<ReturnProductWeightReqModel>(this as ReturnProductWeightReqModel, _$identity);

  /// Serializes this ReturnProductWeightReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnProductWeightReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight,date);

@override
String toString() {
  return 'ReturnProductWeightReqModel(id: $id, customerId: $customerId, productId: $productId, weight: $weight, date: $date)';
}


}

/// @nodoc
abstract mixin class $ReturnProductWeightReqModelCopyWith<$Res>  {
  factory $ReturnProductWeightReqModelCopyWith(ReturnProductWeightReqModel value, $Res Function(ReturnProductWeightReqModel) _then) = _$ReturnProductWeightReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class _$ReturnProductWeightReqModelCopyWithImpl<$Res>
    implements $ReturnProductWeightReqModelCopyWith<$Res> {
  _$ReturnProductWeightReqModelCopyWithImpl(this._self, this._then);

  final ReturnProductWeightReqModel _self;
  final $Res Function(ReturnProductWeightReqModel) _then;

/// Create a copy of ReturnProductWeightReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerId = null,Object? productId = null,Object? weight = null,Object? date = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnProductWeightReqModel].
extension ReturnProductWeightReqModelPatterns on ReturnProductWeightReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnProductWeightReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnProductWeightReqModel value)  $default,){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnProductWeightReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'date')  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel() when $default != null:
return $default(_that.id,_that.customerId,_that.productId,_that.weight,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'date')  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel():
return $default(_that.id,_that.customerId,_that.productId,_that.weight,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'product_id')  int productId, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'date')  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqModel() when $default != null:
return $default(_that.id,_that.customerId,_that.productId,_that.weight,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReturnProductWeightReqModel implements ReturnProductWeightReqModel {
  const _ReturnProductWeightReqModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'date') this.date});
  factory _ReturnProductWeightReqModel.fromJson(Map<String, dynamic> json) => _$ReturnProductWeightReqModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'product_id') final  int productId;
@override@JsonKey(name: 'weight') final  double weight;
@override@JsonKey(name: 'date') final  DateTime? date;

/// Create a copy of ReturnProductWeightReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnProductWeightReqModelCopyWith<_ReturnProductWeightReqModel> get copyWith => __$ReturnProductWeightReqModelCopyWithImpl<_ReturnProductWeightReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReturnProductWeightReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnProductWeightReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight,date);

@override
String toString() {
  return 'ReturnProductWeightReqModel(id: $id, customerId: $customerId, productId: $productId, weight: $weight, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ReturnProductWeightReqModelCopyWith<$Res> implements $ReturnProductWeightReqModelCopyWith<$Res> {
  factory _$ReturnProductWeightReqModelCopyWith(_ReturnProductWeightReqModel value, $Res Function(_ReturnProductWeightReqModel) _then) = __$ReturnProductWeightReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'product_id') int productId,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class __$ReturnProductWeightReqModelCopyWithImpl<$Res>
    implements _$ReturnProductWeightReqModelCopyWith<$Res> {
  __$ReturnProductWeightReqModelCopyWithImpl(this._self, this._then);

  final _ReturnProductWeightReqModel _self;
  final $Res Function(_ReturnProductWeightReqModel) _then;

/// Create a copy of ReturnProductWeightReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerId = null,Object? productId = null,Object? weight = null,Object? date = freezed,}) {
  return _then(_ReturnProductWeightReqModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
