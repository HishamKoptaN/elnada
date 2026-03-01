import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_entity.dart';
import '../entities/create_daily_transaction_req_entity.dart';
import '../entities/update_daily_transaction_req_entity.dart';
import '../repo/daily_transactions_repo.dart';

@singleton
class DailyTransactionsUseCases {
  final DailyTransactionsRepo dailyTransactionsRepo;
  DailyTransactionsUseCases(this.dailyTransactionsRepo);
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
  }) async {
    return await dailyTransactionsRepo.create(
      createDailyTransactionReq: createDailyTransactionReq,
    );
  }

  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateDailyTransactionReqEntity updateDailyTransactionReq,
  }) async {
    return await dailyTransactionsRepo.update(
      updateDailyTransactionReq: updateDailyTransactionReq,
    );
  }
}
