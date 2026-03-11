// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionsResModel {

@JsonKey(name: 'collections') List<CollectionModel>? get collections;
/// Create a copy of CollectionsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionsResModelCopyWith<CollectionsResModel> get copyWith => _$CollectionsResModelCopyWithImpl<CollectionsResModel>(this as CollectionsResModel, _$identity);

  /// Serializes this CollectionsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionsResModel&&const DeepCollectionEquality().equals(other.collections, collections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(collections));

@override
String toString() {
  return 'CollectionsResModel(collections: $collections)';
}


}

/// @nodoc
abstract mixin class $CollectionsResModelCopyWith<$Res>  {
  factory $CollectionsResModelCopyWith(CollectionsResModel value, $Res Function(CollectionsResModel) _then) = _$CollectionsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'collections') List<CollectionModel>? collections
});




}
/// @nodoc
class _$CollectionsResModelCopyWithImpl<$Res>
    implements $CollectionsResModelCopyWith<$Res> {
  _$CollectionsResModelCopyWithImpl(this._self, this._then);

  final CollectionsResModel _self;
  final $Res Function(CollectionsResModel) _then;

/// Create a copy of CollectionsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collections = freezed,}) {
  return _then(_self.copyWith(
collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionsResModel].
extension CollectionsResModelPatterns on CollectionsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionsResModel value)  $default,){
final _that = this;
switch (_that) {
case _CollectionsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'collections')  List<CollectionModel>? collections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionsResModel() when $default != null:
return $default(_that.collections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'collections')  List<CollectionModel>? collections)  $default,) {final _that = this;
switch (_that) {
case _CollectionsResModel():
return $default(_that.collections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'collections')  List<CollectionModel>? collections)?  $default,) {final _that = this;
switch (_that) {
case _CollectionsResModel() when $default != null:
return $default(_that.collections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionsResModel implements CollectionsResModel {
  const _CollectionsResModel({@JsonKey(name: 'collections') final  List<CollectionModel>? collections}): _collections = collections;
  factory _CollectionsResModel.fromJson(Map<String, dynamic> json) => _$CollectionsResModelFromJson(json);

 final  List<CollectionModel>? _collections;
@override@JsonKey(name: 'collections') List<CollectionModel>? get collections {
  final value = _collections;
  if (value == null) return null;
  if (_collections is EqualUnmodifiableListView) return _collections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CollectionsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionsResModelCopyWith<_CollectionsResModel> get copyWith => __$CollectionsResModelCopyWithImpl<_CollectionsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionsResModel&&const DeepCollectionEquality().equals(other._collections, _collections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_collections));

@override
String toString() {
  return 'CollectionsResModel(collections: $collections)';
}


}

/// @nodoc
abstract mixin class _$CollectionsResModelCopyWith<$Res> implements $CollectionsResModelCopyWith<$Res> {
  factory _$CollectionsResModelCopyWith(_CollectionsResModel value, $Res Function(_CollectionsResModel) _then) = __$CollectionsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'collections') List<CollectionModel>? collections
});




}
/// @nodoc
class __$CollectionsResModelCopyWithImpl<$Res>
    implements _$CollectionsResModelCopyWith<$Res> {
  __$CollectionsResModelCopyWithImpl(this._self, this._then);

  final _CollectionsResModel _self;
  final $Res Function(_CollectionsResModel) _then;

/// Create a copy of CollectionsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collections = freezed,}) {
  return _then(_CollectionsResModel(
collections: freezed == collections ? _self._collections : collections // ignore: cast_nullable_to_non_nullable
as List<CollectionModel>?,
  ));
}


}


/// @nodoc
mixin _$CollectionModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'amount') int? get amount;@JsonKey(name: 'notes') String? get notes;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionModelCopyWith<CollectionModel> get copyWith => _$CollectionModelCopyWithImpl<CollectionModel>(this as CollectionModel, _$identity);

  /// Serializes this CollectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,notes,createdAt);

@override
String toString() {
  return 'CollectionModel(id: $id, amount: $amount, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CollectionModelCopyWith<$Res>  {
  factory $CollectionModelCopyWith(CollectionModel value, $Res Function(CollectionModel) _then) = _$CollectionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') int? amount,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._self, this._then);

  final CollectionModel _self;
  final $Res Function(CollectionModel) _then;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CollectionModel].
extension CollectionModelPatterns on CollectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionModel value)  $default,){
final _that = this;
switch (_that) {
case _CollectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
return $default(_that.id,_that.amount,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CollectionModel():
return $default(_that.id,_that.amount,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  int? amount, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CollectionModel() when $default != null:
return $default(_that.id,_that.amount,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectionModel implements CollectionModel {
  const _CollectionModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'notes') this.notes, @JsonKey(name: 'created_at') this.createdAt});
  factory _CollectionModel.fromJson(Map<String, dynamic> json) => _$CollectionModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'amount') final  int? amount;
@override@JsonKey(name: 'notes') final  String? notes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionModelCopyWith<_CollectionModel> get copyWith => __$CollectionModelCopyWithImpl<_CollectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,notes,createdAt);

@override
String toString() {
  return 'CollectionModel(id: $id, amount: $amount, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CollectionModelCopyWith<$Res> implements $CollectionModelCopyWith<$Res> {
  factory _$CollectionModelCopyWith(_CollectionModel value, $Res Function(_CollectionModel) _then) = __$CollectionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') int? amount,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$CollectionModelCopyWithImpl<$Res>
    implements _$CollectionModelCopyWith<$Res> {
  __$CollectionModelCopyWithImpl(this._self, this._then);

  final _CollectionModel _self;
  final $Res Function(_CollectionModel) _then;

/// Create a copy of CollectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_CollectionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
