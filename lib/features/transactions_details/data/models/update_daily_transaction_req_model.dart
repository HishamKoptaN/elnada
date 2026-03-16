import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/update_transaction_details_req_entity.dart';
part 'update_daily_transaction_req_model.freezed.dart';
part 'update_daily_transaction_req_model.g.dart';

@freezed
abstract class UpdateTransactionDetailsReqModel
    with _$UpdateTransactionDetailsReqModel {
  const factory UpdateTransactionDetailsReqModel({
    @JsonKey(name: 'weight') required double weight,
    @JsonKey(name: 'cage') required int cage,
  }) = _UpdateTransactionDetailsReqModel;
  factory UpdateTransactionDetailsReqModel.fromJson(
    Map<String, Object?> json,
  ) => _$UpdateTransactionDetailsReqModelFromJson(json);
  factory UpdateTransactionDetailsReqModel.fromEntity(
    UpdateTransactionDetailsReqEntity entity,
  ) {
    return UpdateTransactionDetailsReqModel(
      weight: double.parse(entity.weight!.value!),
      cage: int.parse(entity.cage!.value!),
    );
  }
}
