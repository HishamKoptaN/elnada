import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/price_discount_req_entity.dart';

abstract class PriceDiscountRepo {
  Future<ApiResult<CustomerDailyReportEntity?>> priceDiscount({
    required PriceDiscountReqEntity updatePriceDiscountReq,
  });
}
