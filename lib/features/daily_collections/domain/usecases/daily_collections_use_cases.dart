import 'package:injectable/injectable.dart';
import 'package:taha/features/customers/domain/entities/customer_entity.dart';
import 'package:taha/features/daily_collections/domain/entities/create_daily_collaction_req_entity.dart';
import 'package:taha/features/daily_collections/domain/repo/daily_collections_repo.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/update_daily_collaction_req_entity.dart';

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
