import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../domain/entities/customer_entity.dart';
import '../../domain/repo/customers_repo.dart';
import '../datasources/customers_api.dart';
import '../mappers/customer_daily_reports_res_mapper.dart';
import 'package:intl/intl.dart';

@Singleton(as: CustomersRepo)
class CustomersRepoImpl implements CustomersRepo {
  final CustomersApi customersApi;
  CustomersRepoImpl(this.customersApi);

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
  Future<ApiResult<CustomerDailyReportEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  }) async {
    try {
      final res = await customersApi.updateClientField(
        clientId: clientId,
        isQuranPhotographed: isQuranPhotographed,
      );
      res.toEntity();
      return const ApiResult.success(data: null);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
