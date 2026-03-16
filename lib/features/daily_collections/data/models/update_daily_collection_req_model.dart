import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/update_daily_collection_req_entity.dart';
part 'update_daily_collection_req_model.freezed.dart';
part 'update_daily_collection_req_model.g.dart';

@freezed
abstract class UpdateDailyCollectionReqModel
    with _$UpdateDailyCollectionReqModel {
  const factory UpdateDailyCollectionReqModel({
    @JsonKey(name: 'amount') required int amount,
  }) = _UpdateDailyCollectionReqModel;
  factory UpdateDailyCollectionReqModel.fromEntity(
    UpdateDailyCollectionReqEntity entity,
  ) {
    return UpdateDailyCollectionReqModel(
      amount: int.tryParse(entity.amount?.value ?? '0') ?? 0,
    );
  }
  factory UpdateDailyCollectionReqModel.fromJson(Map<String, Object?> json) =>
      _$UpdateDailyCollectionReqModelFromJson(json);
}
