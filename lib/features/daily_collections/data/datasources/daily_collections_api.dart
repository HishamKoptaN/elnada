import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_constants.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
import '../models/create_daily_collection_req_model.dart';
import '../models/update_daily_collection_req_model.dart';
part 'daily_collections_api.g.dart';

@singleton
@RestApi()
abstract class DailyCollectionsApi {
  @factoryMethod
  factory DailyCollectionsApi(Dio dio) = _DailyCollectionsApi;
  @POST(ApiConstants.collections)
  Future<CustomerDailyReportModel> create({
    @Body()
    required CreateDailyCollectionReqModel createDailyCollectionReqModel,
  });
  @PUT('${ApiConstants.collections}/{id}')
  Future<CustomerDailyReportModel> update({
    @Body()
    required UpdateDailyCollectionReqModel updateDailyCollectionReqModel,
    @Path('id') required int id,
  });
}
