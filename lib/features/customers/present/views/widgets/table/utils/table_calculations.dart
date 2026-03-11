import '../../../../../domain/entities/customer_daily_report_details_res_entity.dart';

class TableCalculations {
  static String calculateProductTotal(
    CustomerDailyReportDetailsResEntity dailyData,
    String productName,
  ) {
    double total = 0;
    dailyData.transactions?.forEach((transaction) {
      transaction.details?.forEach((detail) {
        if (detail.product?.name?.contains(productName) == true) {
          total += double.tryParse(detail.total?.toString() ?? '0') ?? 0;
        }
      });
    });
    return total.toStringAsFixed(0);
  }

  static String calculateAllTransactionsTotal(
    CustomerDailyReportDetailsResEntity dailyData,
  ) {
    double total = 0;
    dailyData.transactions?.forEach((transaction) {
      total += double.tryParse(transaction.totalAmount?.toString() ?? '0') ?? 0;
    });
    return total.toStringAsFixed(0);
  }

  static String calculateAllCollectionsTotal(
    CustomerDailyReportDetailsResEntity dailyData,
  ) {
    double total = 0;
    dailyData.collections?.forEach((collection) {
      total += double.tryParse(collection.amount?.toString() ?? '0') ?? 0;
    });
    return total.toStringAsFixed(0);
  }
}
