import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'daily_collection_entity.dart';
part 'update_daily_collection_req_entity.freezed.dart';

@freezed
abstract class UpdateDailyCollectionReqEntity
    with _$UpdateDailyCollectionReqEntity {
  const UpdateDailyCollectionReqEntity._();
  const factory UpdateDailyCollectionReqEntity({
    required DailyCollectionEntity? dailyCollection,
    required GenericFormzInput<int>? id,
    required GenericFormzInput<String>? amount,
  }) = _UpdateDailyCollectionReqEntity;

  factory UpdateDailyCollectionReqEntity.fromEntity(
    DailyCollectionEntity dailyCollection,
  ) {
    return UpdateDailyCollectionReqEntity(
      dailyCollection: dailyCollection,
      id: GenericFormzInput.dirty(dailyCollection.id ?? 0),
      amount: GenericFormzInput.dirty(dailyCollection.amount?.toString() ?? ''),
    );
  }
  bool get hasChanged {
    final String originalAmount = dailyCollection?.amount?.trim() ?? '';
    final String currentAmount = amount!.value!.trim();
    return originalAmount != currentAmount;
  }
}
