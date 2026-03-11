import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/customer_statement_res_entity.dart';
import '../../domain/repo/customers_repo.dart';
import '../datasources/customers_api.dart';
import '../mappers/customer_daily_report_details_res_mapper.dart';
import '../mappers/customer_daily_reports_res_mapper.dart';
import 'package:intl/intl.dart';

import '../mappers/customer_statement_res_mapper.dart';

@Singleton(as: CustomersRepo)
class CustomersRepoImpl implements CustomersRepo {
  CustomersRepoImpl(this.customersApi);
  final CustomersApi customersApi;

  @override
  Future<ApiResult<CustomersResEntity>> getCustomers({
    required DateTime selectedDate,
    String? query,
  }) async {
    try {
      final res = await customersApi.getCustomers(
        date: DateFormat('yyyy-MM-dd').format(selectedDate),
        query: query,
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Future<ApiResult<CustomerDailyReportDetailsResEntity>>
  getCustomerDailyReport({required int id}) async {
    try {
      final res = await customersApi.getCustomerDailyReport(id: id);
      return ApiResult.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Future<ApiResult<CustomerStatementReportResEntity>>
  getCustomerDailyReportStatement({required int id, int? days}) async {
    try {
      final res = await customersApi.getCustomerDailyReportStatement(
        id: id,
        days: days,
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
