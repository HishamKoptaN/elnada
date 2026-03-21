import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../core/widgets/custom_circular_progress.dart'
    show CustomCircularProgress;
import '../../blocs/bloc/customers_bloc.dart';
import 'statement_data_source.dart';

class StatementDataGridWidget extends StatelessWidget {
  const StatementDataGridWidget({
    super.key,
    required this.state,
    required this.statementDataSource,
  });
  final CustomersState state;
  final StatementDataSource statementDataSource;
  @override
  Widget build(BuildContext context) {
    return state.maybeMap(
      loaded: (state) {
        return Expanded(
          child: SfDataGrid(
            headerRowHeight: 55.h,
            columnWidthMode: ColumnWidthMode.fitByColumnName,
            rowHeight: 70.h,
            source: statementDataSource,
            columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
            columns: [
              GridColumn(
                columnWidthMode: ColumnWidthMode.auto,
                columnName: 'الاسم',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('الاسم', style: TextStyle(fontSize: 16.sp)),
                ),
              ),
              GridColumn(
                columnName: 'باقي يوم قبل',
                columnWidthMode: ColumnWidthMode.fitByCellValue,
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    'باقي يوم قبل',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'اجمالي الوجبة',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    'اجمالي الوجبة',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'التحصيل',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('التحصيل', style: TextStyle(fontSize: 16.sp)),
                ),
              ),
              GridColumn(
                columnName: 'الصافي',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('الصافي', style: TextStyle(fontSize: 16.sp)),
                ),
              ),
            ],
          ),
        );
      },
      orElse: () =>
          const Expanded(child: Center(child: CustomCircularProgress())),
    );
  }
}
