import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_daily_collection_req_model.freezed.dart';
part 'update_daily_collection_req_model.g.dart';

@freezed
abstract class UpdateDailyCollectionReqModel
    with _$UpdateDailyCollectionReqModel {
  const factory UpdateDailyCollectionReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'amount') required int amount,
  }) = _UpdateDailyCollectionReqModel;
  factory UpdateDailyCollectionReqModel.fromJson(Map<String, Object?> json) =>
      _$UpdateDailyCollectionReqModelFromJson(json);
}
