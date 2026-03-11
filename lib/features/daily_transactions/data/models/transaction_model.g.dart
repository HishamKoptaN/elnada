// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyTransactionModel _$DailyTransactionModelFromJson(
  Map<String, dynamic> json,
) => _DailyTransactionModel(
  id: (json['id'] as num?)?.toInt(),
  totalAmount: (json['total_amount'] as num?)?.toInt(),
  details: (json['details'] as List<dynamic>?)
      ?.map((e) => TransactionDetailModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$DailyTransactionModelToJson(
  _DailyTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'total_amount': instance.totalAmount,
  'details': instance.details,
  'created_at': instance.createdAt?.toIso8601String(),
};

_TransactionDetailModel _$TransactionDetailModelFromJson(
  Map<String, dynamic> json,
) => _TransactionDetailModel(
  id: (json['id'] as num?)?.toInt(),
  product: json['product'] == null
      ? null
      : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
  weight: (json['weight'] as num?)?.toDouble(),
  priceAtTime: (json['price_at_time'] as num?)?.toDouble(),
  discount: (json['discount'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$TransactionDetailModelToJson(
  _TransactionDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'weight': instance.weight,
  'price_at_time': instance.priceAtTime,
  'discount': instance.discount,
  'total': instance.total,
};
