// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_statement_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerStatementReportResEntity {

 PeriodEntity? get period; List<CustomerDailyReportDetailsResEntity>? get data;
/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerStatementReportResEntityCopyWith<CustomerStatementReportResEntity> get copyWith => _$CustomerStatementReportResEntityCopyWithImpl<CustomerStatementReportResEntity>(this as CustomerStatementReportResEntity, _$identity);

  /// Serializes this CustomerStatementReportResEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerStatementReportResEntity&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CustomerStatementReportResEntity(period: $period, data: $data)';
}


}

/// @nodoc
abstract mixin class $CustomerStatementReportResEntityCopyWith<$Res>  {
  factory $CustomerStatementReportResEntityCopyWith(CustomerStatementReportResEntity value, $Res Function(CustomerStatementReportResEntity) _then) = _$CustomerStatementReportResEntityCopyWithImpl;
@useResult
$Res call({
 PeriodEntity? period, List<CustomerDailyReportDetailsResEntity>? data
});


$PeriodEntityCopyWith<$Res>? get period;

}
/// @nodoc
class _$CustomerStatementReportResEntityCopyWithImpl<$Res>
    implements $CustomerStatementReportResEntityCopyWith<$Res> {
  _$CustomerStatementReportResEntityCopyWithImpl(this._self, this._then);

  final CustomerStatementReportResEntity _self;
  final $Res Function(CustomerStatementReportResEntity) _then;

/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodEntity?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportDetailsResEntity>?,
  ));
}
/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerStatementReportResEntity].
extension CustomerStatementReportResEntityPatterns on CustomerStatementReportResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerStatementReportResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerStatementReportResEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerStatementReportResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PeriodEntity? period,  List<CustomerDailyReportDetailsResEntity>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity() when $default != null:
return $default(_that.period,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PeriodEntity? period,  List<CustomerDailyReportDetailsResEntity>? data)  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity():
return $default(_that.period,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PeriodEntity? period,  List<CustomerDailyReportDetailsResEntity>? data)?  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementReportResEntity() when $default != null:
return $default(_that.period,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerStatementReportResEntity implements CustomerStatementReportResEntity {
  const _CustomerStatementReportResEntity({this.period, final  List<CustomerDailyReportDetailsResEntity>? data}): _data = data;
  factory _CustomerStatementReportResEntity.fromJson(Map<String, dynamic> json) => _$CustomerStatementReportResEntityFromJson(json);

@override final  PeriodEntity? period;
 final  List<CustomerDailyReportDetailsResEntity>? _data;
@override List<CustomerDailyReportDetailsResEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerStatementReportResEntityCopyWith<_CustomerStatementReportResEntity> get copyWith => __$CustomerStatementReportResEntityCopyWithImpl<_CustomerStatementReportResEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerStatementReportResEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerStatementReportResEntity&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CustomerStatementReportResEntity(period: $period, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CustomerStatementReportResEntityCopyWith<$Res> implements $CustomerStatementReportResEntityCopyWith<$Res> {
  factory _$CustomerStatementReportResEntityCopyWith(_CustomerStatementReportResEntity value, $Res Function(_CustomerStatementReportResEntity) _then) = __$CustomerStatementReportResEntityCopyWithImpl;
@override @useResult
$Res call({
 PeriodEntity? period, List<CustomerDailyReportDetailsResEntity>? data
});


@override $PeriodEntityCopyWith<$Res>? get period;

}
/// @nodoc
class __$CustomerStatementReportResEntityCopyWithImpl<$Res>
    implements _$CustomerStatementReportResEntityCopyWith<$Res> {
  __$CustomerStatementReportResEntityCopyWithImpl(this._self, this._then);

  final _CustomerStatementReportResEntity _self;
  final $Res Function(_CustomerStatementReportResEntity) _then;

/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? data = freezed,}) {
  return _then(_CustomerStatementReportResEntity(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodEntity?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportDetailsResEntity>?,
  ));
}

/// Create a copy of CustomerStatementReportResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$PeriodEntity {

 String? get from; String? get to;
/// Create a copy of PeriodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodEntityCopyWith<PeriodEntity> get copyWith => _$PeriodEntityCopyWithImpl<PeriodEntity>(this as PeriodEntity, _$identity);

  /// Serializes this PeriodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodEntity&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'PeriodEntity(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PeriodEntityCopyWith<$Res>  {
  factory $PeriodEntityCopyWith(PeriodEntity value, $Res Function(PeriodEntity) _then) = _$PeriodEntityCopyWithImpl;
@useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class _$PeriodEntityCopyWithImpl<$Res>
    implements $PeriodEntityCopyWith<$Res> {
  _$PeriodEntityCopyWithImpl(this._self, this._then);

  final PeriodEntity _self;
  final $Res Function(PeriodEntity) _then;

/// Create a copy of PeriodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodEntity].
extension PeriodEntityPatterns on PeriodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodEntity value)  $default,){
final _that = this;
switch (_that) {
case _PeriodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodEntity() when $default != null:
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? to)  $default,) {final _that = this;
switch (_that) {
case _PeriodEntity():
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? to)?  $default,) {final _that = this;
switch (_that) {
case _PeriodEntity() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeriodEntity implements PeriodEntity {
  const _PeriodEntity({this.from, this.to});
  factory _PeriodEntity.fromJson(Map<String, dynamic> json) => _$PeriodEntityFromJson(json);

@override final  String? from;
@override final  String? to;

/// Create a copy of PeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodEntityCopyWith<_PeriodEntity> get copyWith => __$PeriodEntityCopyWithImpl<_PeriodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeriodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodEntity&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'PeriodEntity(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PeriodEntityCopyWith<$Res> implements $PeriodEntityCopyWith<$Res> {
  factory _$PeriodEntityCopyWith(_PeriodEntity value, $Res Function(_PeriodEntity) _then) = __$PeriodEntityCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class __$PeriodEntityCopyWithImpl<$Res>
    implements _$PeriodEntityCopyWith<$Res> {
  __$PeriodEntityCopyWithImpl(this._self, this._then);

  final _PeriodEntity _self;
  final $Res Function(_PeriodEntity) _then;

/// Create a copy of PeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_PeriodEntity(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
