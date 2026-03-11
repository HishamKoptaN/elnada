import '../../../../../../core/networking/api_result.dart';
import '../entities/customer_daily_report_details_res_entity.dart';
import '../entities/customer_daily_reports_res_entity.dart';
import '../entities/customer_statement_res_entity.dart';
abstract class CustomersRepo {
  Future<ApiResult<CustomersResEntity>> getCustomers({
    required DateTime selectedDate,
    String? query,
  });
  Future<ApiResult<CustomerDailyReportDetailsResEntity>>
  getCustomerDailyReport({required int id});
  Future<ApiResult<CustomerStatementReportResEntity>>
  getCustomerDailyReportStatement({required int id, int? days});
}
