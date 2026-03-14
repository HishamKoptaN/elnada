// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_daily_collection_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDailyCollectionReqModel {

@JsonKey(name: 'customer_id') int get customerId;@JsonKey(name: 'amount') int get amount;@JsonKey(name: 'date') DateTime? get date;
/// Create a copy of CreateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDailyCollectionReqModelCopyWith<CreateDailyCollectionReqModel> get copyWith => _$CreateDailyCollectionReqModelCopyWithImpl<CreateDailyCollectionReqModel>(this as CreateDailyCollectionReqModel, _$identity);

  /// Serializes this CreateDailyCollectionReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDailyCollectionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,amount,date);

@override
String toString() {
  return 'CreateDailyCollectionReqModel(customerId: $customerId, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class $CreateDailyCollectionReqModelCopyWith<$Res>  {
  factory $CreateDailyCollectionReqModelCopyWith(CreateDailyCollectionReqModel value, $Res Function(CreateDailyCollectionReqModel) _then) = _$CreateDailyCollectionReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class _$CreateDailyCollectionReqModelCopyWithImpl<$Res>
    implements $CreateDailyCollectionReqModelCopyWith<$Res> {
  _$CreateDailyCollectionReqModelCopyWithImpl(this._self, this._then);

  final CreateDailyCollectionReqModel _self;
  final $Res Function(CreateDailyCollectionReqModel) _then;

/// Create a copy of CreateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? amount = null,Object? date = freezed,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDailyCollectionReqModel].
extension CreateDailyCollectionReqModelPatterns on CreateDailyCollectionReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDailyCollectionReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDailyCollectionReqModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDailyCollectionReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'customer_id')  int customerId, @JsonKey(name: 'amount')  int amount, @JsonKey(name: 'date')  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _CreateDailyCollectionReqModel() when $default != null:
return $default(_that.customerId,_that.amount,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDailyCollectionReqModel implements CreateDailyCollectionReqModel {
  const _CreateDailyCollectionReqModel({@JsonKey(name: 'customer_id') required this.customerId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'date') this.date});
  factory _CreateDailyCollectionReqModel.fromJson(Map<String, dynamic> json) => _$CreateDailyCollectionReqModelFromJson(json);

@override@JsonKey(name: 'customer_id') final  int customerId;
@override@JsonKey(name: 'amount') final  int amount;
@override@JsonKey(name: 'date') final  DateTime? date;

/// Create a copy of CreateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDailyCollectionReqModelCopyWith<_CreateDailyCollectionReqModel> get copyWith => __$CreateDailyCollectionReqModelCopyWithImpl<_CreateDailyCollectionReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDailyCollectionReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDailyCollectionReqModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,amount,date);

@override
String toString() {
  return 'CreateDailyCollectionReqModel(customerId: $customerId, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class _$CreateDailyCollectionReqModelCopyWith<$Res> implements $CreateDailyCollectionReqModelCopyWith<$Res> {
  factory _$CreateDailyCollectionReqModelCopyWith(_CreateDailyCollectionReqModel value, $Res Function(_CreateDailyCollectionReqModel) _then) = __$CreateDailyCollectionReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'customer_id') int customerId,@JsonKey(name: 'amount') int amount,@JsonKey(name: 'date') DateTime? date
});




}
/// @nodoc
class __$CreateDailyCollectionReqModelCopyWithImpl<$Res>
    implements _$CreateDailyCollectionReqModelCopyWith<$Res> {
  __$CreateDailyCollectionReqModelCopyWithImpl(this._self, this._then);

  final _CreateDailyCollectionReqModel _self;
  final $Res Function(_CreateDailyCollectionReqModel) _then;

/// Create a copy of CreateDailyCollectionReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? amount = null,Object? date = freezed,}) {
  return _then(_CreateDailyCollectionReqModel(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
