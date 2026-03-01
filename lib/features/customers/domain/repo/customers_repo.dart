import '../../../../../../core/networking/api_result.dart';
import '../entities/customer_entity.dart';

abstract class CustomersRepo {
  Future<ApiResult<CustomersResEntity>> getCustomers({
    required DateTime selectedDate,
    String? query,
  });
  Future<ApiResult<CustomerDailyReportEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}
