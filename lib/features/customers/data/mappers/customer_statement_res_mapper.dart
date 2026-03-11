import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/customer_statement_res_entity.dart';
import '../models/customer_statement_res_model.dart';
import 'customer_daily_report_details_res_mapper.dart';

extension CustomerStatementMapper on CustomerStatementReportDetailsResModel {
  CustomerStatementReportResEntity toEntity() {
    return CustomerStatementReportResEntity(
      period: period?.toEntity(),
      data: data?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension PeriodMapper on PeriodModel {
  PeriodEntity toEntity() {
    return PeriodEntity(
      from: formatDate(dateTime: from),
      to: formatDate(dateTime: to),
    );
  }
}
