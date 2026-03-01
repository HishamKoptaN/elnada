// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_daily_transaction_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateDailyTransactionReqModel _$UpdateDailyTransactionReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateDailyTransactionReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
  cage: (json['cage'] as num).toInt(),
  discount: (json['discount'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateDailyTransactionReqModelToJson(
  _UpdateDailyTransactionReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'weight': instance.weight,
  'cage': instance.cage,
  'discount': instance.discount,
};
