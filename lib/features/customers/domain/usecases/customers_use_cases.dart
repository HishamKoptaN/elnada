import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../entities/customer_entity.dart';
import '../repo/customers_repo.dart';

@singleton
class CustomersUseCases {
  final CustomersRepo customersRepo;
  CustomersUseCases(this.customersRepo);
  Future<ApiResult<CustomersResEntity>> getCustomers({
    required DateTime selectedDate,
    String? query,
  }) async {
    return await customersRepo.getCustomers(
      selectedDate: selectedDate,
      query: query,
    );
  }

  Future<ApiResult<CustomerDailyReportEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  }) async {
    return await customersRepo.updateClientField(
      clientId: clientId,
      isQuranPhotographed: isQuranPhotographed,
    );
  }
}
