import '../../../../core/utils/date_display_format.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../models/customer_daily_report_res_model.dart';
import '../../../daily_transactions/data/mappers/daily_transactions_mapper.dart';
import '../../../daily_collections/data/mappers/daily_collections_mapper.dart';

extension CustomerDailyReportDetailsMapper
    on CustomerDailyReportDetailsResModel {
  CustomerDailyReportDetailsResEntity toEntity() {
    return CustomerDailyReportDetailsResEntity(
      id: id ?? 0,
      yesterdayClosedBalance: yesterdayClosedBalance?.toString() ?? '',
      transactions: transactions?.map((e) => e.toEntity()).toList() ?? [],
      totalTransactionsAmount: totalTransactionsAmount.toString(),
      collections: collections?.map((e) => e.toEntity()).toList() ?? [],
      closingBalance: closingBalance.toString(),
      createdAt: formatDate(
        dateTime: createdAt,
        displayFormat: DateDisplayFormat.simple,
      ),
    );
  }
}
