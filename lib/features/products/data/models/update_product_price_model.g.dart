// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductPriceReqModel _$UpdateProductPriceReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateProductPriceReqModel(
  productId: (json['product_id'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateProductPriceReqModelToJson(
  _UpdateProductPriceReqModel instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'price': instance.price,
};
