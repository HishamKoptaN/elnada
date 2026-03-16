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
mixin _$UpdateTransactionDetailsReqModel {

@JsonKey(name: 'weight') double get weight;@JsonKey(name: 'cage') int get cage;
/// Create a copy of UpdateTransactionDetailsReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionDetailsReqModelCopyWith<UpdateTransactionDetailsReqModel> get copyWith => _$UpdateTransactionDetailsReqModelCopyWithImpl<UpdateTransactionDetailsReqModel>(this as UpdateTransactionDetailsReqModel, _$identity);

  /// Serializes this UpdateTransactionDetailsReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactionDetailsReqModel&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weight,cage);

@override
String toString() {
  return 'UpdateTransactionDetailsReqModel(weight: $weight, cage: $cage)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionDetailsReqModelCopyWith<$Res>  {
  factory $UpdateTransactionDetailsReqModelCopyWith(UpdateTransactionDetailsReqModel value, $Res Function(UpdateTransactionDetailsReqModel) _then) = _$UpdateTransactionDetailsReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage
});




}
/// @nodoc
class _$UpdateTransactionDetailsReqModelCopyWithImpl<$Res>
    implements $UpdateTransactionDetailsReqModelCopyWith<$Res> {
  _$UpdateTransactionDetailsReqModelCopyWithImpl(this._self, this._then);

  final UpdateTransactionDetailsReqModel _self;
  final $Res Function(UpdateTransactionDetailsReqModel) _then;

/// Create a copy of UpdateTransactionDetailsReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weight = null,Object? cage = null,}) {
  return _then(_self.copyWith(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTransactionDetailsReqModel].
extension UpdateTransactionDetailsReqModelPatterns on UpdateTransactionDetailsReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTransactionDetailsReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTransactionDetailsReqModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTransactionDetailsReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel() when $default != null:
return $default(_that.weight,_that.cage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage)  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel():
return $default(_that.weight,_that.cage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'weight')  double weight, @JsonKey(name: 'cage')  int cage)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTransactionDetailsReqModel() when $default != null:
return $default(_that.weight,_that.cage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTransactionDetailsReqModel implements UpdateTransactionDetailsReqModel {
  const _UpdateTransactionDetailsReqModel({@JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'cage') required this.cage});
  factory _UpdateTransactionDetailsReqModel.fromJson(Map<String, dynamic> json) => _$UpdateTransactionDetailsReqModelFromJson(json);

@override@JsonKey(name: 'weight') final  double weight;
@override@JsonKey(name: 'cage') final  int cage;

/// Create a copy of UpdateTransactionDetailsReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTransactionDetailsReqModelCopyWith<_UpdateTransactionDetailsReqModel> get copyWith => __$UpdateTransactionDetailsReqModelCopyWithImpl<_UpdateTransactionDetailsReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTransactionDetailsReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTransactionDetailsReqModel&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cage, cage) || other.cage == cage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weight,cage);

@override
String toString() {
  return 'UpdateTransactionDetailsReqModel(weight: $weight, cage: $cage)';
}


}

/// @nodoc
abstract mixin class _$UpdateTransactionDetailsReqModelCopyWith<$Res> implements $UpdateTransactionDetailsReqModelCopyWith<$Res> {
  factory _$UpdateTransactionDetailsReqModelCopyWith(_UpdateTransactionDetailsReqModel value, $Res Function(_UpdateTransactionDetailsReqModel) _then) = __$UpdateTransactionDetailsReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'weight') double weight,@JsonKey(name: 'cage') int cage
});




}
/// @nodoc
class __$UpdateTransactionDetailsReqModelCopyWithImpl<$Res>
    implements _$UpdateTransactionDetailsReqModelCopyWith<$Res> {
  __$UpdateTransactionDetailsReqModelCopyWithImpl(this._self, this._then);

  final _UpdateTransactionDetailsReqModel _self;
  final $Res Function(_UpdateTransactionDetailsReqModel) _then;

/// Create a copy of UpdateTransactionDetailsReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weight = null,Object? cage = null,}) {
  return _then(_UpdateTransactionDetailsReqModel(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cage: null == cage ? _self.cage : cage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
