// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_daily_order_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDailyOrderReqModel _$CreateDailyOrderReqModelFromJson(
  Map<String, dynamic> json,
) => _CreateDailyOrderReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$CreateDailyOrderReqModelToJson(
  _CreateDailyOrderReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'product_id': instance.productId,
  'count': instance.count,
};
