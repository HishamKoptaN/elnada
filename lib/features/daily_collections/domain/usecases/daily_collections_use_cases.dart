import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/create_daily_collaction_req_entity.dart';
import '../entities/update_daily_collaction_req_entity.dart';
import '../repo/daily_collections_repo.dart';

@singleton
class DailyCollectionsUseCases {
  final DailyCollectionsRepo dailyCollectionsRepo;
  DailyCollectionsUseCases(this.dailyCollectionsRepo);
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
  }) async {
    return await dailyCollectionsRepo.create(
      createDailyCollectionReq: createDailyCollectionReq,
    );
  }

  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
  }) async {
    return await dailyCollectionsRepo.update(
      updateDailyCollectionReq: updateDailyCollectionReq,
    );
  }
}
