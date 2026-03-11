import '../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/return_product_weight_entity.dart';

abstract class ReturnProductsRepo {
  Future<ApiResult<CustomerDailyReportEntity>> returnWeight({
    required ReturnProductWeightReqEntity returnProductWeightReq,
  });
}
