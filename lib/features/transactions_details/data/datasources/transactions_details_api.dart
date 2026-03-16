import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../../../daily_transactions/data/models/transaction_model.dart';
import '../models/update_daily_transaction_req_model.dart';
part 'transactions_details_api.g.dart';

@singleton
@RestApi()
abstract class TransactionsDetailsApi {
  @factoryMethod
  factory TransactionsDetailsApi(Dio dio) = _TransactionsDetailsApi;
  @PUT('${ApiConstants.transactionsDetails}/{id}')
  Future<CustomerDailyReportModel> update({
    @Body()
    required UpdateTransactionDetailsReqModel updateTransactionDetailsReq,
    @Path('id') required int id,
  });
}
