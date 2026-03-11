import 'package:freezed_annotation/freezed_annotation.dart';
part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
abstract class CollectionsResModel with _$CollectionsResModel {
  const factory CollectionsResModel({
    @JsonKey(name: 'collections') List<CollectionModel>? collections,
  }) = _CollectionsResModel;
  factory CollectionsResModel.fromJson(Map<String, Object?> json) =>
      _$CollectionsResModelFromJson(json);
}

@freezed
abstract class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CollectionModel;
  factory CollectionModel.fromJson(Map<String, Object?> json) =>
      _$CollectionModelFromJson(json);
}
