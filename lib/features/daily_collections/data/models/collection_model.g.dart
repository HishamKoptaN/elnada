// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionsResModel _$CollectionsResModelFromJson(Map<String, dynamic> json) =>
    _CollectionsResModel(
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => CollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionsResModelToJson(
  _CollectionsResModel instance,
) => <String, dynamic>{'collections': instance.collections};

_CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) =>
    _CollectionModel(
      id: (json['id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CollectionModelToJson(_CollectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'notes': instance.notes,
      'created_at': instance.createdAt?.toIso8601String(),
    };
