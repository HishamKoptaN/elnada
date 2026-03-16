import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
import '../entities/update_transaction_details_req_entity.dart';

abstract class TransactionsDetailsRepo {
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateTransactionDetailsReqEntity updateTransactionDetailsReq,
  });
}
