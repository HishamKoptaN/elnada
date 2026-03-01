import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_daily_collection_req_model.freezed.dart';
part 'create_daily_collection_req_model.g.dart';

@freezed
abstract class CreateDailyCollectionReqModel
    with _$CreateDailyCollectionReqModel {
  const factory CreateDailyCollectionReqModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'amount') required int amount,
  }) = _CreateDailyCollectionReqModel;
  factory CreateDailyCollectionReqModel.fromJson(Map<String, Object?> json) =>
      _$CreateDailyCollectionReqModelFromJson(json);
}
