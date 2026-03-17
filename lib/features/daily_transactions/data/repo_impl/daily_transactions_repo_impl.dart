import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../domain/entities/create_daily_transaction_req_entity.dart';
import '../../domain/entities/update_daily_transaction_req_entity.dart';
import '../../domain/repo/daily_transactions_repo.dart';
import '../datasources/daily_transactions_api.dart';
import '../mappers/daily_transactions_mapper.dart';

@Singleton(as: DailyTransactionsRepo)
class DailyTransactionsRepoImpl implements DailyTransactionsRepo {
  DailyTransactionsRepoImpl(this.dailyTransactionsApi);
  final DailyTransactionsApi dailyTransactionsApi;

  @override
  Future<ApiResult<CustomerDailyReportEntity?>> create({
    required CreateDailyTransactionReqEntity createDailyTransactionReq,
  }) async {
    try {
      final res = await dailyTransactionsApi.create(
        createDailyTransactionReqModel: createDailyTransactionReq.toModel(),
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
    required UpdateDailyTransactionReqEntity updateDailyTransactionReq,
  }) async {
    try {
      final res = await dailyTransactionsApi.update(
        updateDailyTransactionReq: updateDailyTransactionReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
