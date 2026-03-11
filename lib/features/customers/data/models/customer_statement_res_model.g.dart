// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statement_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerStatementReportDetailsResModel
_$CustomerStatementReportDetailsResModelFromJson(Map<String, dynamic> json) =>
    _CustomerStatementReportDetailsResModel(
      period: json['period'] == null
          ? null
          : PeriodModel.fromJson(json['period'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => CustomerDailyReportDetailsResModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$CustomerStatementReportDetailsResModelToJson(
  _CustomerStatementReportDetailsResModel instance,
) => <String, dynamic>{'period': instance.period, 'data': instance.data};

_PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) => _PeriodModel(
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
);

Map<String, dynamic> _$PeriodModelToJson(_PeriodModel instance) =>
    <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
    };
