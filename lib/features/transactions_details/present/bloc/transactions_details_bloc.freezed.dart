// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionsDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsEvent()';
}


}

/// @nodoc
class $TransactionsDetailsEventCopyWith<$Res>  {
$TransactionsDetailsEventCopyWith(TransactionsDetailsEvent _, $Res Function(TransactionsDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionsDetailsEvent].
extension TransactionsDetailsEventPatterns on TransactionsDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DataChanged value)?  dataChanged,TResult Function( _Update value)?  update,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _Update() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DataChanged value)  dataChanged,required TResult Function( _Update value)  update,}){
final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that);case _Update():
return update(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DataChanged value)?  dataChanged,TResult? Function( _Update value)?  update,}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _Update() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UpdateTransactionDetailsReqEntity updateTransactionDetailsReq)?  dataChanged,TResult Function()?  update,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.updateTransactionDetailsReq);case _Update() when update != null:
return update();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UpdateTransactionDetailsReqEntity updateTransactionDetailsReq)  dataChanged,required TResult Function()  update,}) {final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that.updateTransactionDetailsReq);case _Update():
return update();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UpdateTransactionDetailsReqEntity updateTransactionDetailsReq)?  dataChanged,TResult? Function()?  update,}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.updateTransactionDetailsReq);case _Update() when update != null:
return update();case _:
  return null;

}
}

}

/// @nodoc


class _DataChanged implements TransactionsDetailsEvent {
  const _DataChanged({required this.updateTransactionDetailsReq});
  

 final  UpdateTransactionDetailsReqEntity updateTransactionDetailsReq;

/// Create a copy of TransactionsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataChangedCopyWith<_DataChanged> get copyWith => __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataChanged&&(identical(other.updateTransactionDetailsReq, updateTransactionDetailsReq) || other.updateTransactionDetailsReq == updateTransactionDetailsReq));
}


@override
int get hashCode => Object.hash(runtimeType,updateTransactionDetailsReq);

@override
String toString() {
  return 'TransactionsDetailsEvent.dataChanged(updateTransactionDetailsReq: $updateTransactionDetailsReq)';
}


}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res> implements $TransactionsDetailsEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(_DataChanged value, $Res Function(_DataChanged) _then) = __$DataChangedCopyWithImpl;
@useResult
$Res call({
 UpdateTransactionDetailsReqEntity updateTransactionDetailsReq
});


$UpdateTransactionDetailsReqEntityCopyWith<$Res> get updateTransactionDetailsReq;

}
/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

/// Create a copy of TransactionsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateTransactionDetailsReq = null,}) {
  return _then(_DataChanged(
updateTransactionDetailsReq: null == updateTransactionDetailsReq ? _self.updateTransactionDetailsReq : updateTransactionDetailsReq // ignore: cast_nullable_to_non_nullable
as UpdateTransactionDetailsReqEntity,
  ));
}

/// Create a copy of TransactionsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateTransactionDetailsReqEntityCopyWith<$Res> get updateTransactionDetailsReq {
  
  return $UpdateTransactionDetailsReqEntityCopyWith<$Res>(_self.updateTransactionDetailsReq, (value) {
    return _then(_self.copyWith(updateTransactionDetailsReq: value));
  });
}
}

/// @nodoc


class _Update implements TransactionsDetailsEvent {
  const _Update();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsEvent.update()';
}


}




/// @nodoc
mixin _$TransactionsDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsState()';
}


}

/// @nodoc
class $TransactionsDetailsStateCopyWith<$Res>  {
$TransactionsDetailsStateCopyWith(TransactionsDetailsState _, $Res Function(TransactionsDetailsState) __);
}


/// Adds pattern-matching-related methods to [TransactionsDetailsState].
extension TransactionsDetailsStatePatterns on TransactionsDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UpdateTransactionDetailsReqEntity createDailyTransactionReq,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult Function()?  success,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.createDailyTransactionReq,_that.formzSubmissionStatus);case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UpdateTransactionDetailsReqEntity createDailyTransactionReq,  FormzSubmissionStatus formzSubmissionStatus)  loaded,required TResult Function()  success,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.createDailyTransactionReq,_that.formzSubmissionStatus);case _Success():
return success();case _Failure():
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UpdateTransactionDetailsReqEntity createDailyTransactionReq,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult? Function()?  success,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.createDailyTransactionReq,_that.formzSubmissionStatus);case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TransactionsDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsState.initial()';
}


}




/// @nodoc


class _Loading implements TransactionsDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements TransactionsDetailsState {
  const _Loaded({required this.createDailyTransactionReq, required this.formzSubmissionStatus});
  

 final  UpdateTransactionDetailsReqEntity createDailyTransactionReq;
 final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of TransactionsDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.createDailyTransactionReq, createDailyTransactionReq) || other.createDailyTransactionReq == createDailyTransactionReq)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,createDailyTransactionReq,formzSubmissionStatus);

@override
String toString() {
  return 'TransactionsDetailsState.loaded(createDailyTransactionReq: $createDailyTransactionReq, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $TransactionsDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 UpdateTransactionDetailsReqEntity createDailyTransactionReq, FormzSubmissionStatus formzSubmissionStatus
});


$UpdateTransactionDetailsReqEntityCopyWith<$Res> get createDailyTransactionReq;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of TransactionsDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createDailyTransactionReq = null,Object? formzSubmissionStatus = null,}) {
  return _then(_Loaded(
createDailyTransactionReq: null == createDailyTransactionReq ? _self.createDailyTransactionReq : createDailyTransactionReq // ignore: cast_nullable_to_non_nullable
as UpdateTransactionDetailsReqEntity,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}

/// Create a copy of TransactionsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateTransactionDetailsReqEntityCopyWith<$Res> get createDailyTransactionReq {
  
  return $UpdateTransactionDetailsReqEntityCopyWith<$Res>(_self.createDailyTransactionReq, (value) {
    return _then(_self.copyWith(createDailyTransactionReq: value));
  });
}
}

/// @nodoc


class _Success implements TransactionsDetailsState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsDetailsState.success()';
}


}




/// @nodoc


class _Failure implements TransactionsDetailsState {
  const _Failure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of TransactionsDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'TransactionsDetailsState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $TransactionsDetailsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of TransactionsDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
