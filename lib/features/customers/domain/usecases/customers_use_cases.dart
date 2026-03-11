import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/customer_daily_report_details_res_entity.dart';
import '../entities/customer_daily_reports_res_entity.dart';
import '../entities/customer_statement_res_entity.dart';
import '../repo/customers_repo.dart';
@singleton
class CustomersUseCases {
  CustomersUseCases(this.customersRepo);
  final CustomersRepo customersRepo;
  Future<ApiResult<CustomersResEntity>> getCustomers({
    required DateTime selectedDate,
    String? query,
  }) async {
    return await customersRepo.getCustomers(
      selectedDate: selectedDate,
      query: query,
    );
  }


  Future<ApiResult<CustomerDailyReportDetailsResEntity>>
  getCustomerDailyReport({required int id}) async {
    return await customersRepo.getCustomerDailyReport(id: id);
  }

  Future<ApiResult<CustomerStatementReportResEntity>>
  getCustomerDailyReportStatement({required int id, int? days}) async {
    return await customersRepo.getCustomerDailyReportStatement(
      id: id,
      days: days,
    );
  }
}
