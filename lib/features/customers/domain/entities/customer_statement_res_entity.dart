import 'package:freezed_annotation/freezed_annotation.dart';
import 'customer_daily_report_details_res_entity.dart';
part 'customer_statement_res_entity.freezed.dart';
part 'customer_statement_res_entity.g.dart';

@freezed
abstract class CustomerStatementReportResEntity
    with _$CustomerStatementReportResEntity {
  const factory CustomerStatementReportResEntity({
    PeriodEntity? period,
    List<CustomerDailyReportDetailsResEntity>? data,
  }) = _CustomerStatementReportResEntity;
  factory CustomerStatementReportResEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$CustomerStatementReportResEntityFromJson(json);
}

@freezed
abstract class PeriodEntity with _$PeriodEntity {
  const factory PeriodEntity({String? from, String? to}) = _PeriodEntity;

  factory PeriodEntity.fromJson(Map<String, dynamic> json) =>
      _$PeriodEntityFromJson(json);
}
