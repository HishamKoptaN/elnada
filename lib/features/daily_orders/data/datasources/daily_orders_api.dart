import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../models/create_daily_order_req_model.dart';
import '../models/update_daily_orders_req_model.dart';
part 'daily_orders_api.g.dart';

@singleton
@RestApi()
abstract class DailyOrdersApi {
  @factoryMethod
  factory DailyOrdersApi(Dio dio) = _DailyOrdersApi;
  @POST(ApiConstants.dailyOrders)
  Future<CustomerDailyReportModel> create({
    @Body() required CreateDailyOrderReqModel createDailyOrderReq,
  });
  @PUT(ApiConstants.dailyOrders)
  Future<CustomerDailyReportModel> update({
    @Body() required UpdateDailyOrderReqModel updateDailyOrderReq,
  });
}
