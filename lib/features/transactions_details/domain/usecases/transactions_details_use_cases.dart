import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../daily_transactions/domain/entities/daily_transaction_entity.dart';
import '../entities/update_transaction_details_req_entity.dart';
import '../repo/transactions_details_repo.dart';

@singleton
class TransactionsDetailsUseCases {
  TransactionsDetailsUseCases(this.transactionsDetailsRepo);
  final TransactionsDetailsRepo transactionsDetailsRepo;

  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateTransactionDetailsReqEntity updateTransactionDetailsReq,
  }) async {
    return await transactionsDetailsRepo.update(
      updateTransactionDetailsReq: updateTransactionDetailsReq,
    );
  }
}
