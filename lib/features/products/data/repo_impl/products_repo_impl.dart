import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../customers/data/mappers/customer_daily_reports_res_mapper.dart';
import '../../../customers/domain/entities/customer_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/repo/product_repo.dart';
import '../datasources/products_api.dart';
import '../mappers/products_mapper.dart';

@Singleton(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  final ProductsApi productsApi;
  ProductsRepoImpl(this.productsApi);

  @override
  Future<ApiResult<ProductPriceEntity?>> updateProductPrice({
    required UpdateProductPriceReqEntity updateProductPriceReq,
  }) async {
    try {
      final res = await productsApi.updateProductPrice(
        updateProductPriceReq: updateProductPriceReq.toModel(),
      );
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
