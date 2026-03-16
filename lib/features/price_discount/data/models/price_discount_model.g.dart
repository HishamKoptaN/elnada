// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceDiscountModel _$PriceDiscountModelFromJson(Map<String, dynamic> json) =>
    _PriceDiscountModel(
      id: (json['id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      discountValue: (json['discount_value'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$PriceDiscountModelToJson(_PriceDiscountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'discount_value': instance.discountValue,
      'created_at': instance.createdAt?.toIso8601String(),
    };
