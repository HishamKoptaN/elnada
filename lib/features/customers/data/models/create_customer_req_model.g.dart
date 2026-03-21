// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCustomerModel _$CreateCustomerModelFromJson(Map<String, dynamic> json) =>
    _CreateCustomerModel(
      name: json['name'] as String?,
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateCustomerModelToJson(
  _CreateCustomerModel instance,
) => <String, dynamic>{'name': instance.name, 'number': instance.number};
