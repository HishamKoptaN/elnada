// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_discount_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceDiscountReqModel _$PriceDiscountReqModelFromJson(
  Map<String, dynamic> json,
) => _PriceDiscountReqModel(
  customerId: (json['customer_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  discountValue: (json['discount_value'] as num).toDouble(),
);

Map<String, dynamic> _$PriceDiscountReqModelToJson(
  _PriceDiscountReqModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'product_id': instance.productId,
  'discount_value': instance.discountValue,
};
