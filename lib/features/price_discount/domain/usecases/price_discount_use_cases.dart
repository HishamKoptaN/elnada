import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/price_discount_req_entity.dart';
import '../repo/price_discount_repo.dart';

@singleton
class PriceDiscountUseCases {
  PriceDiscountUseCases(this.priceDiscountRepo);
  final PriceDiscountRepo priceDiscountRepo;
  Future<ApiResult<CustomerDailyReportEntity?>> priceDiscount({
    required PriceDiscountReqEntity updatePriceDiscountReq,
  }) async {
    return await priceDiscountRepo.priceDiscount(
      priceDiscountReq: updatePriceDiscountReq,
    );
  }
}
