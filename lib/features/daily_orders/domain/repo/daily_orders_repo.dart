import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/create_daily_order_req_entity.dart';
import '../entities/update_daily_order_req_entity.dart';

abstract class DailyOrdersRepo {
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyOrderReqEntity createDailyOrderReq,
  });
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyOrderReqEntity updateDailyOrderReq,
  });
}
