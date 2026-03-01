import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../models/create_daily_transaction_req_model.dart';
import '../models/update_daily_transaction_req_model.dart';
part 'daily_transactions_api.g.dart';

@singleton
@RestApi()
abstract class DailyTransactionsApi {
  @factoryMethod
  factory DailyTransactionsApi(Dio dio) = _DailyTransactionsApi;
  @POST(ApiConstants.transactions)
  Future<CustomerDailyReportModel> create({
    @Body()
    required CreateDailyTransactionReqModel createDailyTransactionReqModel,
  });
  @PUT(ApiConstants.transactions)
  Future<CustomerDailyReportModel> update({
    @Body() required UpdateDailyTransactionReqModel updateDailyTransactionReq,
  });
}
