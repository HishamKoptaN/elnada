import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/update_transaction_details_req_entity.dart';
import '../../domain/repo/transactions_details_repo.dart';
import '../datasources/transactions_details_api.dart';
import '../mappers/transactions_details_mapper.dart';

@Singleton(as: TransactionsDetailsRepo)
class TransactionsDetailsRepoImpl implements TransactionsDetailsRepo {
  TransactionsDetailsRepoImpl(this.transactionsDetailsApi);
  final TransactionsDetailsApi transactionsDetailsApi;

  @override
  Future<ApiResult<CustomerDailyReportEntity?>> update({
    required UpdateTransactionDetailsReqEntity updateTransactionDetailsReq,
  }) async {
    try {
      final res = await transactionsDetailsApi.update(
        updateTransactionDetailsReq: updateTransactionDetailsReq.toModel(),
        id: updateTransactionDetailsReq.id?.value ?? 0,
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
