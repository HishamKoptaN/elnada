// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_daily_collection_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDailyCollectionReqEntity {

 DailyCollectionEntity? get dailyCollection; GenericFormzInput<int>? get id; GenericFormzInput<String>? get amount;
/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDailyCollectionReqEntityCopyWith<UpdateDailyCollectionReqEntity> get copyWith => _$UpdateDailyCollectionReqEntityCopyWithImpl<UpdateDailyCollectionReqEntity>(this as UpdateDailyCollectionReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDailyCollectionReqEntity&&(identical(other.dailyCollection, dailyCollection) || other.dailyCollection == dailyCollection)&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,dailyCollection,id,amount);

@override
String toString() {
  return 'UpdateDailyCollectionReqEntity(dailyCollection: $dailyCollection, id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $UpdateDailyCollectionReqEntityCopyWith<$Res>  {
  factory $UpdateDailyCollectionReqEntityCopyWith(UpdateDailyCollectionReqEntity value, $Res Function(UpdateDailyCollectionReqEntity) _then) = _$UpdateDailyCollectionReqEntityCopyWithImpl;
@useResult
$Res call({
 DailyCollectionEntity? dailyCollection, GenericFormzInput<int>? id, GenericFormzInput<String>? amount
});


$DailyCollectionEntityCopyWith<$Res>? get dailyCollection;

}
/// @nodoc
class _$UpdateDailyCollectionReqEntityCopyWithImpl<$Res>
    implements $UpdateDailyCollectionReqEntityCopyWith<$Res> {
  _$UpdateDailyCollectionReqEntityCopyWithImpl(this._self, this._then);

  final UpdateDailyCollectionReqEntity _self;
  final $Res Function(UpdateDailyCollectionReqEntity) _then;

/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dailyCollection = freezed,Object? id = freezed,Object? amount = freezed,}) {
  return _then(_self.copyWith(
dailyCollection: freezed == dailyCollection ? _self.dailyCollection : dailyCollection // ignore: cast_nullable_to_non_nullable
as DailyCollectionEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}
/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyCollectionEntityCopyWith<$Res>? get dailyCollection {
    if (_self.dailyCollection == null) {
    return null;
  }

  return $DailyCollectionEntityCopyWith<$Res>(_self.dailyCollection!, (value) {
    return _then(_self.copyWith(dailyCollection: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateDailyCollectionReqEntity].
extension UpdateDailyCollectionReqEntityPatterns on UpdateDailyCollectionReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDailyCollectionReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDailyCollectionReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDailyCollectionReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DailyCollectionEntity? dailyCollection,  GenericFormzInput<int>? id,  GenericFormzInput<String>? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity() when $default != null:
return $default(_that.dailyCollection,_that.id,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DailyCollectionEntity? dailyCollection,  GenericFormzInput<int>? id,  GenericFormzInput<String>? amount)  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity():
return $default(_that.dailyCollection,_that.id,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DailyCollectionEntity? dailyCollection,  GenericFormzInput<int>? id,  GenericFormzInput<String>? amount)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqEntity() when $default != null:
return $default(_that.dailyCollection,_that.id,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDailyCollectionReqEntity extends UpdateDailyCollectionReqEntity {
  const _UpdateDailyCollectionReqEntity({required this.dailyCollection, required this.id, required this.amount}): super._();
  

@override final  DailyCollectionEntity? dailyCollection;
@override final  GenericFormzInput<int>? id;
@override final  GenericFormzInput<String>? amount;

/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDailyCollectionReqEntityCopyWith<_UpdateDailyCollectionReqEntity> get copyWith => __$UpdateDailyCollectionReqEntityCopyWithImpl<_UpdateDailyCollectionReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDailyCollectionReqEntity&&(identical(other.dailyCollection, dailyCollection) || other.dailyCollection == dailyCollection)&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,dailyCollection,id,amount);

@override
String toString() {
  return 'UpdateDailyCollectionReqEntity(dailyCollection: $dailyCollection, id: $id, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$UpdateDailyCollectionReqEntityCopyWith<$Res> implements $UpdateDailyCollectionReqEntityCopyWith<$Res> {
  factory _$UpdateDailyCollectionReqEntityCopyWith(_UpdateDailyCollectionReqEntity value, $Res Function(_UpdateDailyCollectionReqEntity) _then) = __$UpdateDailyCollectionReqEntityCopyWithImpl;
@override @useResult
$Res call({
 DailyCollectionEntity? dailyCollection, GenericFormzInput<int>? id, GenericFormzInput<String>? amount
});


@override $DailyCollectionEntityCopyWith<$Res>? get dailyCollection;

}
/// @nodoc
class __$UpdateDailyCollectionReqEntityCopyWithImpl<$Res>
    implements _$UpdateDailyCollectionReqEntityCopyWith<$Res> {
  __$UpdateDailyCollectionReqEntityCopyWithImpl(this._self, this._then);

  final _UpdateDailyCollectionReqEntity _self;
  final $Res Function(_UpdateDailyCollectionReqEntity) _then;

/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dailyCollection = freezed,Object? id = freezed,Object? amount = freezed,}) {
  return _then(_UpdateDailyCollectionReqEntity(
dailyCollection: freezed == dailyCollection ? _self.dailyCollection : dailyCollection // ignore: cast_nullable_to_non_nullable
as DailyCollectionEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,
  ));
}

/// Create a copy of UpdateDailyCollectionReqEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyCollectionEntityCopyWith<$Res>? get dailyCollection {
    if (_self.dailyCollection == null) {
    return null;
  }

  return $DailyCollectionEntityCopyWith<$Res>(_self.dailyCollection!, (value) {
    return _then(_self.copyWith(dailyCollection: value));
  });
}
}

// dart format on
