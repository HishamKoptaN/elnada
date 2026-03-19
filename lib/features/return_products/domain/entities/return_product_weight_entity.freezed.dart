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

 GenericFormzInput<int>? get id; GenericFormzInput<int>? get customerId; GenericFormzInput<int>? get productId; GenericFormzInput<String>? get weight; DateTime? get date;
/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnProductWeightReqEntityCopyWith<ReturnProductWeightReqEntity> get copyWith => _$ReturnProductWeightReqEntityCopyWithImpl<ReturnProductWeightReqEntity>(this as ReturnProductWeightReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnProductWeightReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight,date);

@override
String toString() {
  return 'ReturnProductWeightReqEntity(id: $id, customerId: $customerId, productId: $productId, weight: $weight, date: $date)';
}


}

/// @nodoc
abstract mixin class $ReturnProductWeightReqEntityCopyWith<$Res>  {
  factory $ReturnProductWeightReqEntityCopyWith(ReturnProductWeightReqEntity value, $Res Function(ReturnProductWeightReqEntity) _then) = _$ReturnProductWeightReqEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormzInput<int>? id, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<String>? weight, DateTime? date
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerId = freezed,Object? productId = freezed,Object? weight = freezed,Object? date = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnProductWeightReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnProductWeightReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnProductWeightReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight,  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight,  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormzInput<int>? id,  GenericFormzInput<int>? customerId,  GenericFormzInput<int>? productId,  GenericFormzInput<String>? weight,  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _ReturnProductWeightReqEntity() when $default != null:
return $default(_that.id,_that.customerId,_that.productId,_that.weight,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _ReturnProductWeightReqEntity implements ReturnProductWeightReqEntity {
  const _ReturnProductWeightReqEntity({this.id, this.customerId, this.productId, this.weight, this.date});
  

@override final  GenericFormzInput<int>? id;
@override final  GenericFormzInput<int>? customerId;
@override final  GenericFormzInput<int>? productId;
@override final  GenericFormzInput<String>? weight;
@override final  DateTime? date;

/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnProductWeightReqEntityCopyWith<_ReturnProductWeightReqEntity> get copyWith => __$ReturnProductWeightReqEntityCopyWithImpl<_ReturnProductWeightReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnProductWeightReqEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,productId,weight,date);

@override
String toString() {
  return 'ReturnProductWeightReqEntity(id: $id, customerId: $customerId, productId: $productId, weight: $weight, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ReturnProductWeightReqEntityCopyWith<$Res> implements $ReturnProductWeightReqEntityCopyWith<$Res> {
  factory _$ReturnProductWeightReqEntityCopyWith(_ReturnProductWeightReqEntity value, $Res Function(_ReturnProductWeightReqEntity) _then) = __$ReturnProductWeightReqEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormzInput<int>? id, GenericFormzInput<int>? customerId, GenericFormzInput<int>? productId, GenericFormzInput<String>? weight, DateTime? date
});




}
/// @nodoc
class __$ReturnProductWeightReqEntityCopyWithImpl<$Res>
    implements _$ReturnProductWeightReqEntityCopyWith<$Res> {
  __$ReturnProductWeightReqEntityCopyWithImpl(this._self, this._then);

  final _ReturnProductWeightReqEntity _self;
  final $Res Function(_ReturnProductWeightReqEntity) _then;

/// Create a copy of ReturnProductWeightReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerId = freezed,Object? productId = freezed,Object? weight = freezed,Object? date = freezed,}) {
  return _then(_ReturnProductWeightReqEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
