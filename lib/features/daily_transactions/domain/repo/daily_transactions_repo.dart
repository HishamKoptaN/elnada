import '../../../../../../core/networking/api_result.dart';
import '../entities/create_daily_transaction_req_entity.dart';
import '../entities/update_daily_transaction_req_entity.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';

abstract class DailyTransactionsRepo {
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
  });
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyTransactionReqEntity updateDailyTransactionReq,
  });
}
