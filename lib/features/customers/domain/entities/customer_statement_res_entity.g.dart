// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statement_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerStatementReportResEntity _$CustomerStatementReportResEntityFromJson(
  Map<String, dynamic> json,
) => _CustomerStatementReportResEntity(
  period: json['period'] == null
      ? null
      : PeriodEntity.fromJson(json['period'] as Map<String, dynamic>),
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => CustomerDailyReportDetailsResEntity.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$CustomerStatementReportResEntityToJson(
  _CustomerStatementReportResEntity instance,
) => <String, dynamic>{'period': instance.period, 'data': instance.data};

_PeriodEntity _$PeriodEntityFromJson(Map<String, dynamic> json) =>
    _PeriodEntity(from: json['from'] as String?, to: json['to'] as String?);

Map<String, dynamic> _$PeriodEntityToJson(_PeriodEntity instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};
