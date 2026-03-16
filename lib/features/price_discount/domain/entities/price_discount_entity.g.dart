// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_discount_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceDiscountEntity _$PriceDiscountEntityFromJson(Map<String, dynamic> json) =>
    _PriceDiscountEntity(
      id: (json['id'] as num?)?.toInt(),
      discountValue: json['discountValue'] as String?,
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$PriceDiscountEntityToJson(
  _PriceDiscountEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'discountValue': instance.discountValue,
  'product': instance.product,
  'created_at': instance.createdAt,
};
