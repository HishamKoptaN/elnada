import 'package:taha/features/customers/domain/entities/customer_entity.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/create_daily_collaction_req_entity.dart';
import '../entities/update_daily_collaction_req_entity.dart';

abstract class DailyCollectionsRepo {
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
  });
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
  });
}
