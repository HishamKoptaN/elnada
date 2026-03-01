import 'package:taha/features/customers/domain/entities/customer_entity.dart';
import '../../../../../../core/networking/api_result.dart';
import '../entities/product_entity.dart';

abstract class ProductsRepo {
  Future<ApiResult<ProductPriceEntity?>> updateProductPrice({
    required UpdateProductPriceReqEntity updateProductPriceReq,
  });
}
