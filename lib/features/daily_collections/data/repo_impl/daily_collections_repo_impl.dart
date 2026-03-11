import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/create_daily_collaction_req_entity.dart';
import '../../domain/entities/update_daily_collaction_req_entity.dart';
import '../datasources/daily_collections_api.dart';
import '../../domain/repo/daily_collections_repo.dart';
import '../mappers/daily_collections_mapper.dart';

@Singleton(as: DailyCollectionsRepo)
class DailyCollectionsRepoImpl implements DailyCollectionsRepo {
  final DailyCollectionsApi dailyCollectionsApi;
  DailyCollectionsRepoImpl(this.dailyCollectionsApi);

  @override
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
  }) async {
    try {
      final res = await dailyCollectionsApi.create(
        createDailyCollectionReqModel: createDailyCollectionReq.toModel(),
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
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
  }) async {
    try {
      final res = await dailyCollectionsApi.update(
        updateDailyCollectionReqModel: updateDailyCollectionReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
