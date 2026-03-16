import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../models/price_discount_req_model.dart';
part 'price_discount_api.g.dart';

@singleton
@RestApi()
abstract class PriceDiscountApi {
  @factoryMethod
  factory PriceDiscountApi(Dio dio) = _PriceDiscountApi;
  @POST(ApiConstants.priceDiscount)
  Future<CustomerDailyReportModel> priceDiscount({
    @Body() required PriceDiscountReqModel priceDiscountReq,
  });
}
