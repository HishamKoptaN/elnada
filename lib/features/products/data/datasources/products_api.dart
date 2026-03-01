import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../models/update_product_price_model.dart';
part 'products_api.g.dart';

@singleton
@RestApi()
abstract class ProductsApi {
  @factoryMethod
  factory ProductsApi(Dio dio) = _ProductsApi;
  @POST(ApiConstants.productsPrice)
  Future<ProductPriceModel> updateProductPrice({
    @Body() required UpdateProductPriceReqModel updateProductPriceReq,
  });
}
