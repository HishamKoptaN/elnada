import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_collection_entity.freezed.dart';
part 'daily_collection_entity.g.dart';

@freezed
abstract class DailyCollectionEntity with _$DailyCollectionEntity {
  const factory DailyCollectionEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _DailyCollectionEntity;
  factory DailyCollectionEntity.fromJson(Map<String, Object?> json) =>
      _$DailyCollectionEntityFromJson(json);
}
