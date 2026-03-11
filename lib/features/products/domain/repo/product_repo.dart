import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/product_entity.dart';

abstract class ProductsRepo {
  Future<ApiResult<ProductDailyPriceEntity?>> updateProductPrice({
    required UpdateProductPriceReqEntity updateProductPriceReq,
  });
}
