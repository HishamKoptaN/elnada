// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_product_weight_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReturnProductWeightReqEntity {

 GenericFormzInput<int>? get id; GenericFormzInput<int>? get customerId; GenericFormzInput<int>? get productId; GenericFormzInput<String>? get weight;
/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnProductWeightReqEntityCopyWith<ReturnProductWeightReqEntity> get copyWith => _$ReturnProductWeightReqEntityCopyWithImpl<ReturnProductWeightReqEntity>(this as ReturnProductWeightReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnProductWeightReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight);

@override
String toString() {
  return 'ReturnProductWeightReqEntity(id: $id, customerId: $customerId, productId: $productId, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ReturnProductWeightReqEntityCopyWith<$Res>  {
  factory $ReturnProductWeightReqEntityCopyWith(ReturnProductWeightReqEntity value, $Res Function(ReturnProductWeightReqEntity) _then) = _$ReturnProductWeightReqEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormzInput<int>? id, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<String>? weight
});




}
/// @nodoc
class _$ReturnProductWeightReqEntityCopyWithImpl<$Res>
    implements $ReturnProductWeightReqEntityCopyWith<$Res> {
  _$ReturnProductWeightReqEntityCopyWithImpl(this._self, this._then);

  final ReturnProductWeightReqEntity _self;
  final $Res Function(ReturnProductWeightReqEntity) _then;

/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerId = freezed,Object? productId = freezed,Object? weight = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnProductWeightReqEntity].
extension ReturnProductWeightReqEntityPatterns on ReturnProductWeightReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnWeightReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnWeightReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnWeightReqModel value)  $default,){
final _that = this;
switch (_that) {
case _ReturnWeightReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnWeightReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnWeightReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnWeightReqModel() when $default != null:
return $default(_that.id,_that.customerId,_that.productId,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight)  $default,) {final _that = this;
switch (_that) {
case _ReturnWeightReqModel():
return $default(_that.id,_that.customerId,_that.productId,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight)?  $default,) {final _that = this;
switch (_that) {
case _ReturnWeightReqModel() when $default != null:
return $default(_that.id,_that.customerId,_that.productId,_that.weight);case _:
  return null;

}
}

}

/// @nodoc


class _ReturnWeightReqModel implements ReturnProductWeightReqEntity {
  const _ReturnWeightReqModel({this.id, this.customerId, this.productId, this.weight});
  

@override final  GenericFormzInput<int>? id;
@override final  GenericFormzInput<int>? customerId;
@override final  GenericFormzInput<int>? productId;
@override final  GenericFormzInput<String>? weight;

/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnWeightReqModelCopyWith<_ReturnWeightReqModel> get copyWith => __$ReturnWeightReqModelCopyWithImpl<_ReturnWeightReqModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnWeightReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight);

@override
String toString() {
  return 'ReturnProductWeightReqEntity(id: $id, customerId: $customerId, productId: $productId, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ReturnWeightReqModelCopyWith<$Res> implements $ReturnProductWeightReqEntityCopyWith<$Res> {
  factory _$ReturnWeightReqModelCopyWith(_ReturnWeightReqModel value, $Res Function(_ReturnWeightReqModel) _then) = __$ReturnWeightReqModelCopyWithImpl;
@override @useResult
$Res call({
 GenericFormzInput<int>? id, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<String>? weight
});




}
/// @nodoc
class __$ReturnWeightReqModelCopyWithImpl<$Res>
    implements _$ReturnWeightReqModelCopyWith<$Res> {
  __$ReturnWeightReqModelCopyWithImpl(this._self, this._then);

  final _ReturnWeightReqModel _self;
  final $Res Function(_ReturnWeightReqModel) _then;

/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerId = freezed,Object? productId = freezed,Object? weight = freezed,}) {
  return _then(_ReturnWeightReqModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}


}

// dart format on
