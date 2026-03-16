// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_transaction_details_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateTransactionDetailsReqEntity {

 TransactionDetailEntity? get transactionDetails; GenericFormzInput<int>? get id; GenericFormzInput<String>? get weight; GenericFormzInput<String>? get cage;
/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionDetailsReqEntityCopyWith<UpdateTransactionDetailsReqEntity> get copyWith => _$UpdateTransactionDetailsReqEntityCopyWithImpl<UpdateTransactionDetailsReqEntity>(this as UpdateTransactionDetailsReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactionDetailsReqEntity&&(identical(other.transactionDetails, transactionDetails) || other.transactionDetails == transactionDetails)&&(identical(other.id, id) || other.id == id)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage));
}


@override
int get hashCode => Object.hash(runtimeType,transactionDetails,id,weight,cage);

@override
String toString() {
  return 'UpdateTransactionDetailsReqEntity(transactionDetails: $transactionDetails, id: $id, weight: $weight, cage: $cage)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionDetailsReqEntityCopyWith<$Res>  {
  factory $UpdateTransactionDetailsReqEntityCopyWith(UpdateTransactionDetailsReqEntity value, $Res Function(UpdateTransactionDetailsReqEntity) _then) = _$UpdateTransactionDetailsReqEntityCopyWithImpl;
@useResult
$Res call({
 TransactionDetailEntity? transactionDetails, GenericFormzInput<int>? id, GenericFormzInput<String>? weight, GenericFormzInput<String>? cage
});


$TransactionDetailEntityCopyWith<$Res>? get transactionDetails;

}
/// @nodoc
class _$UpdateTransactionDetailsReqEntityCopyWithImpl<$Res>
    implements $UpdateTransactionDetailsReqEntityCopyWith<$Res> {
  _$UpdateTransactionDetailsReqEntityCopyWithImpl(this._self, this._then);

  final UpdateTransactionDetailsReqEntity _self;
  final $Res Function(UpdateTransactionDetailsReqEntity) _then;

/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionDetails = freezed,Object? id = freezed,Object? weight = freezed,Object? cage = freezed,}) {
  return _then(_self.copyWith(
transactionDetails: freezed == transactionDetails ? _self.transactionDetails : transactionDetails // ignore: cast_nullable_to_non_nullable
as TransactionDetailEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,cage: freezed == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}
/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionDetailEntityCopyWith<$Res>? get transactionDetails {
    if (_self.transactionDetails == null) {
    return null;
  }

  return $TransactionDetailEntityCopyWith<$Res>(_self.transactionDetails!, (value) {
    return _then(_self.copyWith(transactionDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTransactionDetailsReqEntity].
extension UpdateTransactionDetailsReqEntityPatterns on UpdateTransactionDetailsReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTransactionDetailsReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTransactionDetailsReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTransactionDetailsReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionDetailEntity? transactionDetails,  GenericFormzInput<int>? id,  GenericFormzInput<String>? weight,  GenericFormzInput<String>? cage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity() when $default != null:
return $default(_that.transactionDetails,_that.id,_that.weight,_that.cage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionDetailEntity? transactionDetails,  GenericFormzInput<int>? id,  GenericFormzInput<String>? weight,  GenericFormzInput<String>? cage)  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity():
return $default(_that.transactionDetails,_that.id,_that.weight,_that.cage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionDetailEntity? transactionDetails,  GenericFormzInput<int>? id,  GenericFormzInput<String>? weight,  GenericFormzInput<String>? cage)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqEntity() when $default != null:
return $default(_that.transactionDetails,_that.id,_that.weight,_that.cage);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateTransactionDetailsReqEntity extends UpdateTransactionDetailsReqEntity {
  const _UpdateTransactionDetailsReqEntity({required this.transactionDetails, required this.id, required this.weight, required this.cage}): super._();
  

@override final  TransactionDetailEntity? transactionDetails;
@override final  GenericFormzInput<int>? id;
@override final  GenericFormzInput<String>? weight;
@override final  GenericFormzInput<String>? cage;

/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTransactionDetailsReqEntityCopyWith<_UpdateTransactionDetailsReqEntity> get copyWith => __$UpdateTransactionDetailsReqEntityCopyWithImpl<_UpdateTransactionDetailsReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTransactionDetailsReqEntity&&(identical(other.transactionDetails, transactionDetails) || other.transactionDetails == transactionDetails)&&(identical(other.id, id) || other.id == id)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage));
}


@override
int get hashCode => Object.hash(runtimeType,transactionDetails,id,weight,cage);

@override
String toString() {
  return 'UpdateTransactionDetailsReqEntity(transactionDetails: $transactionDetails, id: $id, weight: $weight, cage: $cage)';
}


}

/// @nodoc
abstract mixin class _$UpdateTransactionDetailsReqEntityCopyWith<$Res> implements $UpdateTransactionDetailsReqEntityCopyWith<$Res> {
  factory _$UpdateTransactionDetailsReqEntityCopyWith(_UpdateTransactionDetailsReqEntity value, $Res Function(_UpdateTransactionDetailsReqEntity) _then) = __$UpdateTransactionDetailsReqEntityCopyWithImpl;
@override @useResult
$Res call({
 TransactionDetailEntity? transactionDetails, GenericFormzInput<int>? id, GenericFormzInput<String>? weight, GenericFormzInput<String>? cage
});


@override $TransactionDetailEntityCopyWith<$Res>? get transactionDetails;

}
/// @nodoc
class __$UpdateTransactionDetailsReqEntityCopyWithImpl<$Res>
    implements _$UpdateTransactionDetailsReqEntityCopyWith<$Res> {
  __$UpdateTransactionDetailsReqEntityCopyWithImpl(this._self, this._then);

  final _UpdateTransactionDetailsReqEntity _self;
  final $Res Function(_UpdateTransactionDetailsReqEntity) _then;

/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionDetails = freezed,Object? id = freezed,Object? weight = freezed,Object? cage = freezed,}) {
  return _then(_UpdateTransactionDetailsReqEntity(
transactionDetails: freezed == transactionDetails ? _self.transactionDetails : transactionDetails // ignore: cast_nullable_to_non_nullable
as TransactionDetailEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,cage: freezed == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}

/// Create a copy of UpdateTransactionDetailsReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionDetailEntityCopyWith<$Res>? get transactionDetails {
    if (_self.transactionDetails == null) {
    return null;
  }

  return $TransactionDetailEntityCopyWith<$Res>(_self.transactionDetails!, (value) {
    return _then(_self.copyWith(transactionDetails: value));
  });
}
}

// dart format on
