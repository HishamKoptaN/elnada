import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/create_daily_order_req_entity.dart';
import '../../domain/entities/update_daily_order_req_entity.dart';
import '../datasources/daily_orders_api.dart';
import '../../domain/repo/daily_orders_repo.dart';
import '../mappers/daily_orders_mapper.dart';

@Singleton(as: DailyOrdersRepo)
class DailyOrdersRepoImpl implements DailyOrdersRepo {
  final DailyOrdersApi dailyOrdersApi;
  DailyOrdersRepoImpl(this.dailyOrdersApi);

  @override
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyOrderReqEntity createDailyOrderReq,
  }) async {
    try {
      final res = await dailyOrdersApi.create(
        createDailyOrderReq: createDailyOrderReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyOrderReqEntity updateDailyOrderReq,
  }) async {
    try {
      final res = await dailyOrdersApi.update(
        updateDailyOrderReq: updateDailyOrderReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
