// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_product_weight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnProductWeightReqModel _$ReturnProductWeightReqModelFromJson(
  Map<String, dynamic> json,
) => _ReturnProductWeightReqModel(
  id: (json['id'] as num).toInt(),
  customerId: (json['customer_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
);

Map<String, dynamic> _$ReturnProductWeightReqModelToJson(
  _ReturnProductWeightReqModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'customer_id': instance.customerId,
  'product_id': instance.productId,
  'weight': instance.weight,
};
