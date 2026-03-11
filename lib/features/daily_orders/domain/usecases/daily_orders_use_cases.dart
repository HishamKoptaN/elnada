import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/update_daily_order_req_entity.dart';
import '../repo/daily_orders_repo.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/create_daily_order_req_entity.dart';

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
