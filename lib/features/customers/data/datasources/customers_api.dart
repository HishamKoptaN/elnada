import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../models/create_customer_req_model.dart';
import '../models/customer_daily_report_res_model.dart';
import '../models/customer_daily_reports_res_model.dart';
import '../models/customer_statement_res_model.dart';
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
  @GET('${ApiConstants.customerDailyReports}/{id}')
  Future<CustomerDailyReportDetailsResModel> getCustomerDailyReport({
    @Path('id') required int id,
  });
  @GET('${ApiConstants.customerDailyReports}/{id}/statement')
  Future<CustomerStatementReportDetailsResModel>
  getCustomerDailyReportStatement({
    @Path('id') required int id,
    @Query('days') int? days,
  });
  @POST(ApiConstants.customers)
  Future<CustomerDailyReportModel> create({
    @Body() required CreateCustomerModel createCustomer,
  });
}
