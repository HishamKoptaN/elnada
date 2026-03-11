// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_daily_report_details_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDailyReportDetailsResEntity
_$CustomerDailyReportDetailsResEntityFromJson(
  Map<String, dynamic> json,
) => _CustomerDailyReportDetailsResEntity(
  id: (json['id'] as num?)?.toInt(),
  yesterdayClosedBalance: json['yesterdayClosedBalance'] as String?,
  transactions: (json['transactions'] as List<dynamic>?)
      ?.map((e) => DailyTransactionEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalTransactionsAmount: json['totalTransactionsAmount'] as String?,
  collections: (json['collections'] as List<dynamic>?)
      ?.map((e) => DailyCollectionEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  orders: (json['orders'] as List<dynamic>?)
      ?.map((e) => DailyProductOrderEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  closingBalance: json['closingBalance'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$CustomerDailyReportDetailsResEntityToJson(
  _CustomerDailyReportDetailsResEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'yesterdayClosedBalance': instance.yesterdayClosedBalance,
  'transactions': instance.transactions,
  'totalTransactionsAmount': instance.totalTransactionsAmount,
  'collections': instance.collections,
  'orders': instance.orders,
  'closingBalance': instance.closingBalance,
  'createdAt': instance.createdAt,
};
