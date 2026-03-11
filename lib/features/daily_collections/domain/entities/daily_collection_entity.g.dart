// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_collection_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyCollectionEntity _$DailyCollectionEntityFromJson(
  Map<String, dynamic> json,
) => _DailyCollectionEntity(
  id: (json['id'] as num?)?.toInt(),
  amount: json['amount'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$DailyCollectionEntityToJson(
  _DailyCollectionEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'created_at': instance.createdAt,
};
