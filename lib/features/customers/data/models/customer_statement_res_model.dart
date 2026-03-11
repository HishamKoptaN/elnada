import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_daily_report_res_model.dart';
part 'customer_statement_res_model.freezed.dart';
part 'customer_statement_res_model.g.dart';

@freezed
abstract class CustomerStatementReportDetailsResModel
    with _$CustomerStatementReportDetailsResModel {
  const factory CustomerStatementReportDetailsResModel({
    @JsonKey(name: "period") PeriodModel? period,
    @JsonKey(name: "data") List<CustomerDailyReportDetailsResModel>? data,
  }) = _CustomerStatementReportDetailsResModel;
  factory CustomerStatementReportDetailsResModel.fromJson(
    Map<String, dynamic> json,
  ) => _$CustomerStatementReportDetailsResModelFromJson(json);
}

@freezed
abstract class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    @JsonKey(name: "from") DateTime? from,
    @JsonKey(name: "to") DateTime? to,
  }) = _PeriodModel;
  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);
}
