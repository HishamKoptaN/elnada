// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_daily_transaction_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDailyTransactionReqModel _$CreateDailyTransactionReqModelFromJson(
  Map<String, dynamic> json,
) => _CreateDailyTransactionReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
  cage: (json['cage'] as num).toInt(),
  discount: (json['discount'] as num?)?.toInt(),
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$CreateDailyTransactionReqModelToJson(
  _CreateDailyTransactionReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'product_id': instance.productId,
  'weight': instance.weight,
  'cage': instance.cage,
  'discount': instance.discount,
  'date': instance.date?.toIso8601String(),
};
