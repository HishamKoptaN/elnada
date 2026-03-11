import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../daily_collections/domain/entities/daily_collection_entity.dart';
import '../../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../widgets/renderers/collection_cell_renderer.dart';
import '../widgets/renderers/statement_cell_renderer.dart';

class DefaultCellRenderer implements CellRenderer {
  DefaultCellRenderer({this.color, this.isBold = false});
  final Color? color;
  final bool isBold;
  @override
  Widget render(DataGridCell cell) {
    return Text(
      cell.value.toString(),
      style: TextStyle(
        fontSize: 14.sp,
        color: color ?? Colors.black,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class StatementDataSource extends DataGridSource {
  StatementDataSource({required this.customerDailyReports});
  final List<CustomerDailyReportDetailsResEntity> customerDailyReports;
  @override
  List<DataGridRow> get rows => customerDailyReports.map((report) {
    final collectionsList = report.collections ?? [];
    return DataGridRow(
      cells: [
        DataGridCell<String>(columnName: 'التاريخ', value: report.createdAt),
        DataGridCell<String>(
          columnName: 'باقي يوم قبل',
          value: report.yesterdayClosedBalance?.toString() ?? '0',
        ),
        DataGridCell<String>(
          columnName: 'اجمالي الوجبة',
          value: report.totalTransactionsAmount,
        ),
        DataGridCell<List<DailyCollectionEntity>>(
          columnName: 'التحصيل',
          value: collectionsList,
        ),
        DataGridCell<String>(
          columnName: 'الصافي',
          value: report.closingBalance?.toString() ?? '0',
        ),
      ],
    );
  }).toList();
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.w),
          child: _getRendererForColumn(cell.columnName).render(cell),
        );
      }).toList(),
    );
  }

  CellRenderer _getRendererForColumn(String columnName) {
    switch (columnName) {
      case 'التحصيل':
        return CollectionCellRenderer();
      case 'الصافي':
        return DefaultCellRenderer(color: Colors.blue[900], isBold: true);
      case 'اجمالي الوجبة':
        return DefaultCellRenderer(color: Colors.red[700]);
      case 'باقي يوم قبل':
        return DefaultCellRenderer(color: Colors.grey[700]);
      default:
        return DefaultCellRenderer();
    }
  }
}
