import 'package:taha/features/customers/domain/entities/customer_entity.dart';
import '../../../../../../core/networking/api_result.dart';
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
