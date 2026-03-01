import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/customer_daily_reports_res_model.dart';

part 'customers_api.g.dart';

@singleton
@RestApi()
abstract class CustomersApi {
  @factoryMethod
  factory CustomersApi(Dio dio) = _CustomersApi;
  @GET(ApiConstants.customerDailyReports)
  Future<CustomerDailyReportsResModel> getCustomers({
    @Query('date') required String date,
    @Query('query') String? query,
  });
  @POST(ApiConstants.customers)
  Future<CustomerDailyReportModel> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}
