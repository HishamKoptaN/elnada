import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../entities/return_product_weight_entity.dart';
import '../repo/return_product_repo.dart';

@singleton
class ReturnProductsUseCases {
  ReturnProductsUseCases(this.productRepo);
  final ReturnProductsRepo productRepo;

  Future<ApiResult<CustomerDailyReportEntity>> returnWeight({
    required ReturnProductWeightReqEntity returnProductWeightReq,
  }) async {
    return await productRepo.returnWeight(
      returnProductWeightReq: returnProductWeightReq,
    );
  }
}
