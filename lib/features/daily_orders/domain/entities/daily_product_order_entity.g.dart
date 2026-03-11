// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_product_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyProductOrderEntity _$DailyProductOrderEntityFromJson(
  Map<String, dynamic> json,
) => _DailyProductOrderEntity(
  productId: (json['product_id'] as num?)?.toInt(),
  totalCount: (json['total_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$DailyProductOrderEntityToJson(
  _DailyProductOrderEntity instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'total_count': instance.totalCount,
};
