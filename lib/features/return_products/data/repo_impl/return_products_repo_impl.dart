import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/return_product_weight_entity.dart';
import '../../domain/repo/return_product_repo.dart';
import '../datasources/return_products_api.dart';
import '../mappers/return_req_mapper.dart';

@Singleton(as: ReturnProductsRepo)
class ReturnProductsRepoImpl implements ReturnProductsRepo {
  ReturnProductsRepoImpl(this.api);
  final ReturnProductsApi api;

  @override
  Future<ApiResult<CustomerDailyReportEntity>> returnWeight({
    required ReturnProductWeightReqEntity returnProductWeightReq,
  }) async {
    try {
      final res = await api.returnWeight(
        returnProductWeightReq: returnProductWeightReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
