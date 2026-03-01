import 'package:injectable/injectable.dart';
import 'package:taha/features/customers/domain/entities/customer_entity.dart';
import 'package:taha/features/daily_orders/domain/entities/create_daily_order_req_entity.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/update_daily_order_req_entity.dart';
import '../repo/daily_orders_repo.dart';

@singleton
class DailyOrdersUseCases {
  final DailyOrdersRepo dailyOrdersRepo;
  DailyOrdersUseCases(this.dailyOrdersRepo);
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyOrderReqEntity createDailyOrderReq,
  }) async {
    return await dailyOrdersRepo.create(
      createDailyOrderReq: createDailyOrderReq,
    );
  }

  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyOrderReqEntity updateDailyOrderReq,
  }) async {
    return await dailyOrdersRepo.update(
      updateDailyOrderReq: updateDailyOrderReq,
    );
  }
}
