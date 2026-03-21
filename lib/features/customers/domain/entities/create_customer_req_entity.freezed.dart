// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCustomerReqEntity {

 GenericFormzInput<String>? get name; GenericFormzInput<String>? get number;@JsonKey(includeIfNull: false) FormzSubmissionStatus? get formzSubmissionStatus;
/// Create a copy of CreateCustomerReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCustomerReqEntityCopyWith<CreateCustomerReqEntity> get copyWith => _$CreateCustomerReqEntityCopyWithImpl<CreateCustomerReqEntity>(this as CreateCustomerReqEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCustomerReqEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,number,formzSubmissionStatus);

@override
String toString() {
  return 'CreateCustomerReqEntity(name: $name, number: $number, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class $CreateCustomerReqEntityCopyWith<$Res>  {
  factory $CreateCustomerReqEntityCopyWith(CreateCustomerReqEntity value, $Res Function(CreateCustomerReqEntity) _then) = _$CreateCustomerReqEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormzInput<String>? name, GenericFormzInput<String>? number,@JsonKey(includeIfNull: false) FormzSubmissionStatus? formzSubmissionStatus
});




}
/// @nodoc
class _$CreateCustomerReqEntityCopyWithImpl<$Res>
    implements $CreateCustomerReqEntityCopyWith<$Res> {
  _$CreateCustomerReqEntityCopyWithImpl(this._self, this._then);

  final CreateCustomerReqEntity _self;
  final $Res Function(CreateCustomerReqEntity) _then;

/// Create a copy of CreateCustomerReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? number = freezed,Object? formzSubmissionStatus = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,formzSubmissionStatus: freezed == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCustomerReqEntity].
extension CreateCustomerReqEntityPatterns on CreateCustomerReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCustomerReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCustomerReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCustomerReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCustomerReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormzInput<String>? name,  GenericFormzInput<String>? number, @JsonKey(includeIfNull: false)  FormzSubmissionStatus? formzSubmissionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCustomerReqEntity() when $default != null:
return $default(_that.name,_that.number,_that.formzSubmissionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormzInput<String>? name,  GenericFormzInput<String>? number, @JsonKey(includeIfNull: false)  FormzSubmissionStatus? formzSubmissionStatus)  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReqEntity():
return $default(_that.name,_that.number,_that.formzSubmissionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormzInput<String>? name,  GenericFormzInput<String>? number, @JsonKey(includeIfNull: false)  FormzSubmissionStatus? formzSubmissionStatus)?  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerReqEntity() when $default != null:
return $default(_that.name,_that.number,_that.formzSubmissionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCustomerReqEntity extends CreateCustomerReqEntity {
  const _CreateCustomerReqEntity({this.name, this.number, @JsonKey(includeIfNull: false) this.formzSubmissionStatus}): super._();
  

@override final  GenericFormzInput<String>? name;
@override final  GenericFormzInput<String>? number;
@override@JsonKey(includeIfNull: false) final  FormzSubmissionStatus? formzSubmissionStatus;

/// Create a copy of CreateCustomerReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCustomerReqEntityCopyWith<_CreateCustomerReqEntity> get copyWith => __$CreateCustomerReqEntityCopyWithImpl<_CreateCustomerReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCustomerReqEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,name,number,formzSubmissionStatus);

@override
String toString() {
  return 'CreateCustomerReqEntity(name: $name, number: $number, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$CreateCustomerReqEntityCopyWith<$Res> implements $CreateCustomerReqEntityCopyWith<$Res> {
  factory _$CreateCustomerReqEntityCopyWith(_CreateCustomerReqEntity value, $Res Function(_CreateCustomerReqEntity) _then) = __$CreateCustomerReqEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormzInput<String>? name, GenericFormzInput<String>? number,@JsonKey(includeIfNull: false) FormzSubmissionStatus? formzSubmissionStatus
});




}
/// @nodoc
class __$CreateCustomerReqEntityCopyWithImpl<$Res>
    implements _$CreateCustomerReqEntityCopyWith<$Res> {
  __$CreateCustomerReqEntityCopyWithImpl(this._self, this._then);

  final _CreateCustomerReqEntity _self;
  final $Res Function(_CreateCustomerReqEntity) _then;

/// Create a copy of CreateCustomerReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? number = freezed,Object? formzSubmissionStatus = freezed,}) {
  return _then(_CreateCustomerReqEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<String>?,formzSubmissionStatus: freezed == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus?,
  ));
}


}

// dart format on
