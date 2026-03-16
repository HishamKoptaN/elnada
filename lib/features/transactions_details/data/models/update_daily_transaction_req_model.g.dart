// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_daily_transaction_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTransactionDetailsReqModel _$UpdateTransactionDetailsReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateTransactionDetailsReqModel(
  weight: (json['weight'] as num).toDouble(),
  cage: (json['cage'] as num).toInt(),
);

Map<String, dynamic> _$UpdateTransactionDetailsReqModelToJson(
  _UpdateTransactionDetailsReqModel instance,
) => <String, dynamic>{'weight': instance.weight, 'cage': instance.cage};
