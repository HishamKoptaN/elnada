// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_statement_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerStatementReportDetailsResModel {

@JsonKey(name: "period") PeriodModel? get period;@JsonKey(name: "data") List<CustomerDailyReportDetailsResModel>? get data;
/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerStatementReportDetailsResModelCopyWith<CustomerStatementReportDetailsResModel> get copyWith => _$CustomerStatementReportDetailsResModelCopyWithImpl<CustomerStatementReportDetailsResModel>(this as CustomerStatementReportDetailsResModel, _$identity);

  /// Serializes this CustomerStatementReportDetailsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerStatementReportDetailsResModel&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CustomerStatementReportDetailsResModel(period: $period, data: $data)';
}


}

/// @nodoc
abstract mixin class $CustomerStatementReportDetailsResModelCopyWith<$Res>  {
  factory $CustomerStatementReportDetailsResModelCopyWith(CustomerStatementReportDetailsResModel value, $Res Function(CustomerStatementReportDetailsResModel) _then) = _$CustomerStatementReportDetailsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "period") PeriodModel? period,@JsonKey(name: "data") List<CustomerDailyReportDetailsResModel>? data
});


$PeriodModelCopyWith<$Res>? get period;

}
/// @nodoc
class _$CustomerStatementReportDetailsResModelCopyWithImpl<$Res>
    implements $CustomerStatementReportDetailsResModelCopyWith<$Res> {
  _$CustomerStatementReportDetailsResModelCopyWithImpl(this._self, this._then);

  final CustomerStatementReportDetailsResModel _self;
  final $Res Function(CustomerStatementReportDetailsResModel) _then;

/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodModel?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportDetailsResModel>?,
  ));
}
/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PeriodModelCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerStatementReportDetailsResModel].
extension CustomerStatementReportDetailsResModelPatterns on CustomerStatementReportDetailsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerStatementReportDetailsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerStatementReportDetailsResModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerStatementReportDetailsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "period")  PeriodModel? period, @JsonKey(name: "data")  List<CustomerDailyReportDetailsResModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "period")  PeriodModel? period, @JsonKey(name: "data")  List<CustomerDailyReportDetailsResModel>? data)  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "period")  PeriodModel? period, @JsonKey(name: "data")  List<CustomerDailyReportDetailsResModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementReportDetailsResModel() when $default != null:
return $default(_that.period,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerStatementReportDetailsResModel implements CustomerStatementReportDetailsResModel {
  const _CustomerStatementReportDetailsResModel({@JsonKey(name: "period") this.period, @JsonKey(name: "data") final  List<CustomerDailyReportDetailsResModel>? data}): _data = data;
  factory _CustomerStatementReportDetailsResModel.fromJson(Map<String, dynamic> json) => _$CustomerStatementReportDetailsResModelFromJson(json);

@override@JsonKey(name: "period") final  PeriodModel? period;
 final  List<CustomerDailyReportDetailsResModel>? _data;
@override@JsonKey(name: "data") List<CustomerDailyReportDetailsResModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerStatementReportDetailsResModelCopyWith<_CustomerStatementReportDetailsResModel> get copyWith => __$CustomerStatementReportDetailsResModelCopyWithImpl<_CustomerStatementReportDetailsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerStatementReportDetailsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerStatementReportDetailsResModel&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CustomerStatementReportDetailsResModel(period: $period, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CustomerStatementReportDetailsResModelCopyWith<$Res> implements $CustomerStatementReportDetailsResModelCopyWith<$Res> {
  factory _$CustomerStatementReportDetailsResModelCopyWith(_CustomerStatementReportDetailsResModel value, $Res Function(_CustomerStatementReportDetailsResModel) _then) = __$CustomerStatementReportDetailsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "period") PeriodModel? period,@JsonKey(name: "data") List<CustomerDailyReportDetailsResModel>? data
});


@override $PeriodModelCopyWith<$Res>? get period;

}
/// @nodoc
class __$CustomerStatementReportDetailsResModelCopyWithImpl<$Res>
    implements _$CustomerStatementReportDetailsResModelCopyWith<$Res> {
  __$CustomerStatementReportDetailsResModelCopyWithImpl(this._self, this._then);

  final _CustomerStatementReportDetailsResModel _self;
  final $Res Function(_CustomerStatementReportDetailsResModel) _then;

/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? data = freezed,}) {
  return _then(_CustomerStatementReportDetailsResModel(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodModel?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerDailyReportDetailsResModel>?,
  ));
}

/// Create a copy of CustomerStatementReportDetailsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $PeriodModelCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$PeriodModel {

@JsonKey(name: "from") DateTime? get from;@JsonKey(name: "to") DateTime? get to;
/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<PeriodModel> get copyWith => _$PeriodModelCopyWithImpl<PeriodModel>(this as PeriodModel, _$identity);

  /// Serializes this PeriodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodModel&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'PeriodModel(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $PeriodModelCopyWith<$Res>  {
  factory $PeriodModelCopyWith(PeriodModel value, $Res Function(PeriodModel) _then) = _$PeriodModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "from") DateTime? from,@JsonKey(name: "to") DateTime? to
});




}
/// @nodoc
class _$PeriodModelCopyWithImpl<$Res>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._self, this._then);

  final PeriodModel _self;
  final $Res Function(PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodModel].
extension PeriodModelPatterns on PeriodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodModel value)  $default,){
final _that = this;
switch (_that) {
case _PeriodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "from")  DateTime? from, @JsonKey(name: "to")  DateTime? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "from")  DateTime? from, @JsonKey(name: "to")  DateTime? to)  $default,) {final _that = this;
switch (_that) {
case _PeriodModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "from")  DateTime? from, @JsonKey(name: "to")  DateTime? to)?  $default,) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeriodModel implements PeriodModel {
  const _PeriodModel({@JsonKey(name: "from") this.from, @JsonKey(name: "to") this.to});
  factory _PeriodModel.fromJson(Map<String, dynamic> json) => _$PeriodModelFromJson(json);

@override@JsonKey(name: "from") final  DateTime? from;
@override@JsonKey(name: "to") final  DateTime? to;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodModelCopyWith<_PeriodModel> get copyWith => __$PeriodModelCopyWithImpl<_PeriodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeriodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodModel&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'PeriodModel(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$PeriodModelCopyWith<$Res> implements $PeriodModelCopyWith<$Res> {
  factory _$PeriodModelCopyWith(_PeriodModel value, $Res Function(_PeriodModel) _then) = __$PeriodModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "from") DateTime? from,@JsonKey(name: "to") DateTime? to
});




}
/// @nodoc
class __$PeriodModelCopyWithImpl<$Res>
    implements _$PeriodModelCopyWith<$Res> {
  __$PeriodModelCopyWithImpl(this._self, this._then);

  final _PeriodModel _self;
  final $Res Function(_PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_PeriodModel(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
