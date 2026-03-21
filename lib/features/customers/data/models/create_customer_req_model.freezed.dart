// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerModel {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'number') int? get number;
/// Create a copy of CreateCustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCustomerModelCopyWith<CreateCustomerModel> get copyWith => _$CreateCustomerModelCopyWithImpl<CreateCustomerModel>(this as CreateCustomerModel, _$identity);

  /// Serializes this CreateCustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCustomerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'CreateCustomerModel(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class $CreateCustomerModelCopyWith<$Res>  {
  factory $CreateCustomerModelCopyWith(CreateCustomerModel value, $Res Function(CreateCustomerModel) _then) = _$CreateCustomerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'number') int? number
});




}
/// @nodoc
class _$CreateCustomerModelCopyWithImpl<$Res>
    implements $CreateCustomerModelCopyWith<$Res> {
  _$CreateCustomerModelCopyWithImpl(this._self, this._then);

  final CreateCustomerModel _self;
  final $Res Function(CreateCustomerModel) _then;

/// Create a copy of CreateCustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? number = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCustomerModel].
extension CreateCustomerModelPatterns on CreateCustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCustomerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCustomerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCustomerModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCustomerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'number')  int? number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCustomerModel() when $default != null:
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'number')  int? number)  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerModel():
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'number')  int? number)?  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerModel() when $default != null:
return $default(_that.name,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCustomerModel implements CreateCustomerModel {
  const _CreateCustomerModel({@JsonKey(name: 'name') this.name, @JsonKey(name: 'number') this.number});
  factory _CreateCustomerModel.fromJson(Map<String, dynamic> json) => _$CreateCustomerModelFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'number') final  int? number;

/// Create a copy of CreateCustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCustomerModelCopyWith<_CreateCustomerModel> get copyWith => __$CreateCustomerModelCopyWithImpl<_CreateCustomerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCustomerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCustomerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'CreateCustomerModel(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class _$CreateCustomerModelCopyWith<$Res> implements $CreateCustomerModelCopyWith<$Res> {
  factory _$CreateCustomerModelCopyWith(_CreateCustomerModel value, $Res Function(_CreateCustomerModel) _then) = __$CreateCustomerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'number') int? number
});




}
/// @nodoc
class __$CreateCustomerModelCopyWithImpl<$Res>
    implements _$CreateCustomerModelCopyWith<$Res> {
  __$CreateCustomerModelCopyWithImpl(this._self, this._then);

  final _CreateCustomerModel _self;
  final $Res Function(_CreateCustomerModel) _then;

/// Create a copy of CreateCustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? number = freezed,}) {
  return _then(_CreateCustomerModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
