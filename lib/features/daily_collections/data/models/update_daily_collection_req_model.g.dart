// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_daily_collection_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateDailyCollectionReqModel _$UpdateDailyCollectionReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateDailyCollectionReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  date: json['date'] as String,
);

Map<String, dynamic> _$UpdateDailyCollectionReqModelToJson(
  _UpdateDailyCollectionReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'amount': instance.amount,
  'date': instance.date,
};
