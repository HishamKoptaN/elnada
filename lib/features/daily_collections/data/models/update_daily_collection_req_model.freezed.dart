// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_daily_collection_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDailyCollectionReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'amount') int get amount;@JsonKey(name: 'date') String get date;
/// Create a copy of UpdateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDailyCollectionReqModelCopyWith<UpdateDailyCollectionReqModel> get copyWith => _$UpdateDailyCollectionReqModelCopyWithImpl<UpdateDailyCollectionReqModel>(this as UpdateDailyCollectionReqModel, _$identity);

  /// Serializes this UpdateDailyCollectionReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDailyCollectionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,amount,date);

@override
String toString() {
  return 'UpdateDailyCollectionReqModel(customerId: $customerId, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class $UpdateDailyCollectionReqModelCopyWith<$Res>  {
  factory $UpdateDailyCollectionReqModelCopyWith(UpdateDailyCollectionReqModel value, $Res Function(UpdateDailyCollectionReqModel) _then) = _$UpdateDailyCollectionReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'date') String date
});




}
/// @nodoc
class _$UpdateDailyCollectionReqModelCopyWithImpl<$Res>
    implements $UpdateDailyCollectionReqModelCopyWith<$Res> {
  _$UpdateDailyCollectionReqModelCopyWithImpl(this._self, this._then);

  final UpdateDailyCollectionReqModel _self;
  final $Res Function(UpdateDailyCollectionReqModel) _then;

/// Create a copy of UpdateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? amount = null,Object? date = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDailyCollectionReqModel].
extension UpdateDailyCollectionReqModelPatterns on UpdateDailyCollectionReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDailyCollectionReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDailyCollectionReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDailyCollectionReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel() when $default != null:
return $default(_that.customerId,_that.amount,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  String date)  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel():
return $default(_that.customerId,_that.amount,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  String date)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDailyCollectionReqModel() when $default != null:
return $default(_that.customerId,_that.amount,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDailyCollectionReqModel implements UpdateDailyCollectionReqModel {
  const _UpdateDailyCollectionReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'date') required this.date});
  factory _UpdateDailyCollectionReqModel.fromJson(Map<String, dynamic> json) => _$UpdateDailyCollectionReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'amount') final  int amount;
@override@JsonKey(name: 'date') final  String date;

/// Create a copy of UpdateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDailyCollectionReqModelCopyWith<_UpdateDailyCollectionReqModel> get copyWith => __$UpdateDailyCollectionReqModelCopyWithImpl<_UpdateDailyCollectionReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDailyCollectionReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDailyCollectionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,amount,date);

@override
String toString() {
  return 'UpdateDailyCollectionReqModel(customerId: $customerId, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class _$UpdateDailyCollectionReqModelCopyWith<$Res> implements $UpdateDailyCollectionReqModelCopyWith<$Res> {
  factory _$UpdateDailyCollectionReqModelCopyWith(_UpdateDailyCollectionReqModel value, $Res Function(_UpdateDailyCollectionReqModel) _then) = __$UpdateDailyCollectionReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'date') String date
});




}
/// @nodoc
class __$UpdateDailyCollectionReqModelCopyWithImpl<$Res>
    implements _$UpdateDailyCollectionReqModelCopyWith<$Res> {
  __$UpdateDailyCollectionReqModelCopyWithImpl(this._self, this._then);

  final _UpdateDailyCollectionReqModel _self;
  final $Res Function(_UpdateDailyCollectionReqModel) _then;

/// Create a copy of UpdateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? amount = null,Object? date = null,}) {
  return _then(_UpdateDailyCollectionReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
