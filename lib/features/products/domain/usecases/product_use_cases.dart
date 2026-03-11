import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/product_entity.dart';
import '../repo/product_repo.dart';

@singleton
class ProductsUseCases {
  final ProductsRepo productRepo;
  ProductsUseCases(this.productRepo);
  Future<ApiResult<ProductDailyPriceEntity?>> updateProductPrice({
    required UpdateProductPriceReqEntity updateProductPriceReq,
  }) async {
    return await productRepo.updateProductPrice(
      updateProductPriceReq: updateProductPriceReq,
    );
  }
}
