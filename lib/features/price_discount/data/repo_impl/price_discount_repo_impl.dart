import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/price_discount_req_entity.dart';
import '../datasources/price_discount_api.dart';
import '../../domain/repo/price_discount_repo.dart';
import '../models/price_discount_req_model.dart';

@Singleton(as: PriceDiscountRepo)
class PriceDiscountRepoImpl implements PriceDiscountRepo {
  PriceDiscountRepoImpl(this.priceDiscountApi);
  final PriceDiscountApi priceDiscountApi;
  @override
  Future<ApiResult<CustomerDailyReportEntity?>> priceDiscount({
    required PriceDiscountReqEntity priceDiscountReq,
  }) async {
    try {
      final res = await priceDiscountApi.priceDiscount(
        priceDiscountReq: PriceDiscountReqModel.fromEntity(
          priceDiscountReq: priceDiscountReq,
        ),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
