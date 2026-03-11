import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../daily_collections/domain/entities/daily_collection_entity.dart';
import '../../../daily_orders/domain/entities/daily_product_order_entity.dart';
import '../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
part 'customer_daily_report_details_res_entity.freezed.dart';
part 'customer_daily_report_details_res_entity.g.dart';

@freezed
abstract class CustomerDailyReportDetailsResEntity
    with _$CustomerDailyReportDetailsResEntity {
  const factory CustomerDailyReportDetailsResEntity({
    int? id,
    String? yesterdayClosedBalance,
    List<DailyTransactionEntity>? transactions,
    String? totalTransactionsAmount,
    List<DailyCollectionEntity>? collections,
    List<DailyProductOrderEntity>? orders,
    String? closingBalance,
    String? createdAt,
  }) = _CustomerDailyReportDetailsResEntity;
  factory CustomerDailyReportDetailsResEntity.fromJson(
    Map<String, Object?> json,
  ) => _$CustomerDailyReportDetailsResEntityFromJson(json);
}
