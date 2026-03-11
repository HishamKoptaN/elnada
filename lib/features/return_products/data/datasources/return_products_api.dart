import 'package:abujena_dawajen/features/customers/data/models/customer_daily_reports_res_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/return_product_weight_model.dart';
part 'return_products_api.g.dart';

@singleton
@RestApi()
abstract class ReturnProductsApi {
  @factoryMethod
  factory ReturnProductsApi(Dio dio) = _ReturnProductsApi;
  @POST(ApiConstants.returns)
  Future<CustomerDailyReportModel> returnWeight({
    @Body() required ReturnProductWeightReqModel returnProductWeightReq,
  });
}
