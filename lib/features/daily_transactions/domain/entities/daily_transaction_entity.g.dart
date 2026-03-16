// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyTransactionEntity _$DailyTransactionEntityFromJson(
  Map<String, dynamic> json,
) => _DailyTransactionEntity(
  id: (json['id'] as num?)?.toInt(),
  totalAmount: json['totalAmount'] as String?,
  details: (json['details'] as List<dynamic>?)
      ?.map((e) => TransactionDetailEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$DailyTransactionEntityToJson(
  _DailyTransactionEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'totalAmount': instance.totalAmount,
  'details': instance.details,
  'createdAt': instance.createdAt,
};

_TransactionDetailEntity _$TransactionDetailEntityFromJson(
  Map<String, dynamic> json,
) => _TransactionDetailEntity(
  id: (json['id'] as num?)?.toInt(),
  product: json['product'] == null
      ? null
      : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
  weight: json['weight'] as String?,
  cage: json['cage'] as String?,
  priceAtTime: json['priceAtTime'] as String?,
  discount: json['discount'] as String?,
  total: json['total'] as String?,
);

Map<String, dynamic> _$TransactionDetailEntityToJson(
  _TransactionDetailEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'weight': instance.weight,
  'cage': instance.cage,
  'priceAtTime': instance.priceAtTime,
  'discount': instance.discount,
  'total': instance.total,
};
