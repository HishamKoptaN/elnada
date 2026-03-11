// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_daily_report_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDailyReportDetailsResModel
_$CustomerDailyReportDetailsResModelFromJson(
  Map<String, dynamic> json,
) => _CustomerDailyReportDetailsResModel(
  id: (json['id'] as num?)?.toInt(),
  yesterdayClosedBalance: (json['yesterday_closed_balance'] as num?)?.toInt(),
  transactions: (json['transactions'] as List<dynamic>?)
      ?.map((e) => DailyTransactionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalTransactionsAmount: (json['total_transactions_amount'] as num?)?.toInt(),
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => CollectionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  orders: (json['orders'] as List<dynamic>?)
      ?.map((e) => ProductOrderModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  closingBalance: (json['closing_balance'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CustomerDailyReportDetailsResModelToJson(
  _CustomerDailyReportDetailsResModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'yesterday_closed_balance': instance.yesterdayClosedBalance,
  'transactions': instance.transactions,
  'total_transactions_amount': instance.totalTransactionsAmount,
  'collections': instance.collections,
  'orders': instance.orders,
  'closing_balance': instance.closingBalance,
  'created_at': instance.createdAt,
};

_ProductDailyTotalModel _$ProductDailyTotalModelFromJson(
  Map<String, dynamic> json,
) => _ProductDailyTotalModel(
  productId: (json['product_id'] as num?)?.toInt(),
  totalWeight: (json['total_weight'] as num?)?.toDouble(),
  totalAmount: (json['total_amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductDailyTotalModelToJson(
  _ProductDailyTotalModel instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'total_weight': instance.totalWeight,
  'total_amount': instance.totalAmount,
};

_ProductOrderModel _$ProductOrderModelFromJson(Map<String, dynamic> json) =>
    _ProductOrderModel(
      productId: (json['product_id'] as num?)?.toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductOrderModelToJson(_ProductOrderModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'total_count': instance.totalCount,
    };

_ProductReturnModel _$ProductReturnModelFromJson(Map<String, dynamic> json) =>
    _ProductReturnModel(
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      totalWeight: (json['total_weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductReturnModelToJson(_ProductReturnModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'total_weight': instance.totalWeight,
    };
