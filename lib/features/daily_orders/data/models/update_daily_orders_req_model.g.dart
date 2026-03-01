// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_daily_orders_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateDailyOrderReqModel _$UpdateDailyOrderReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateDailyOrderReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$UpdateDailyOrderReqModelToJson(
  _UpdateDailyOrderReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'product_id': instance.productId,
  'count': instance.count,
};
