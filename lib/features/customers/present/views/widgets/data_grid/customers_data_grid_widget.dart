import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../../core/utils/devices_utiles.dart' as devices;
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../../bloc/customers_bloc.dart';
import '../customer_details_dialog/customer_details_dialog.dart';
import 'daily_customer_reports_data_source.dart';

class CustomersDataGridWidget extends StatelessWidget {
  CustomersDataGridWidget({
    super.key,
    required this.state,
    required this.employeeDataSource,
    required this.canInsertPreviusDayData,
  });
  final CustomersState state;
  final DailyCustomerReportsDataSource employeeDataSource;
  final bool canInsertPreviusDayData;
  final DataGridController _dataGridController = DataGridController();
  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        devices.DevicesUtils.getDeviceType(
          width: MediaQuery.of(context).size.width,
        ) ==
        devices.DeviceType.desktop;
    return state.maybeMap(
      loaded: (state) {
        return Expanded(
          child: KeyboardListener(
            autofocus: true,
            focusNode: FocusNode(),
            onKeyEvent: (KeyEvent event) {
              if (event is KeyDownEvent &&
                  event.logicalKey == LogicalKeyboardKey.enter) {
                final RowColumnIndex currentCell =
                    _dataGridController.currentCell;

                if (currentCell.rowIndex > 0) {
                  final details = DataGridCellTapDetails(
                    rowColumnIndex: currentCell,
                    column: _buildColumns(
                      isDesktop: isDesktop,
                    )[currentCell.columnIndex],
                    kind: PointerDeviceKind.unknown,
                    globalPosition: Offset.zero,
                    localPosition: Offset.zero,
                  );
                  _handleCellTap(
                    details: details,
                    state: state,
                    selectedDate: state.selectedDate,
                    isDesktop: isDesktop,
                    context: context,
                    canInsertPreviusDayData: canInsertPreviusDayData,
                  );
                }
              }
            },
            child: SfDataGrid(
              controller: _dataGridController,
              headerRowHeight: 55.h,
              columnWidthMode: ColumnWidthMode.fill,
              navigationMode: GridNavigationMode.cell,
              selectionMode: SelectionMode.single,
              rowHeight: 70.h,
              source: employeeDataSource,
              columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
              onCurrentCellActivated:
                  (currentRowColumnIndex, prevRowColumnIndex) {
                    debugPrint(
                      'الخلية الحالية: ${currentRowColumnIndex.rowIndex}',
                    );
                  },
              onCellTap: (details) {
                _handleCellTap(
                  details: details,
                  state: state,
                  selectedDate: state.selectedDate,
                  isDesktop: isDesktop,
                  context: context,
                  canInsertPreviusDayData: canInsertPreviusDayData,
                );
              },
              columns: _buildColumns(isDesktop: isDesktop),
            ),
          ),
        );
      },
      orElse: () =>
          const Expanded(child: Center(child: CircularProgressIndicator())),
    );
  }

  void _handleEnterKey(
    BuildContext context,
    int rowIndex,
    bool isDesktop,
    CustomersState state,
  ) {
    final customerReport = state.maybeMap(
      loaded: (loadedState) =>
          loadedState.customersRes.customerDailyReports?[rowIndex],
      orElse: () => null,
    );
    if (customerReport != null) {
      CustomerDetailsDialog.show(
        context: context,
        customer: customerReport.customer ?? const CustomerEntity(),
        selectedDate: state.maybeMap(
          loaded: (s) => s.selectedDate,
          orElse: () => DateTime.now(),
        ),
        canInsertPreviusDayData: canInsertPreviusDayData,
        dailyReportId: customerReport.id ?? 0,
        index: 0,
      );
    }
  }

  void _handleCellTap({
    required DataGridCellTapDetails details,
    required CustomersState state,
    required DateTime selectedDate,
    required bool canInsertPreviusDayData,
    required bool isDesktop,
    required BuildContext context,
  }) {
    if (details.rowColumnIndex.rowIndex > 0) {
      final currentColumns = _buildColumns(isDesktop: isDesktop);
      final String clickedColumnName =
          currentColumns[details.rowColumnIndex.columnIndex].columnName;
      final int originalIndex = _masterColumns.indexOf(clickedColumnName);
      final customerReport = state.maybeMap(
        loaded: (loadedState) => loadedState
            .customersRes
            .customerDailyReports?[details.rowColumnIndex.rowIndex - 1],
        orElse: () => null,
      );
      if (customerReport != null) {
        CustomerDetailsDialog.show(
          context: context,
          customer: customerReport.customer ?? const CustomerEntity(),
          selectedDate: selectedDate,
          canInsertPreviusDayData: canInsertPreviusDayData,
          dailyReportId: customerReport.id ?? 0,
          index: originalIndex,
        );
      }
    }
  }

  List<GridColumn> _buildColumns({required bool isDesktop}) {
    return [
      _GridColumn('الاسم'),
      _GridColumn('الاصل'),
      if (isDesktop) ...[_GridColumn('تسمين')],
      _GridColumn('مرتجع تسمين'),
      if (isDesktop) ...[_GridColumn('امهات')],
      _GridColumn('مرتجع امهات'),
      _GridColumn('التحصيل'),
      _GridColumn('الصافي'),
      _GridColumn('طلب ت'),
      _GridColumn('طلب م'),
    ];
  }

  static const List<String> _masterColumns = [
    'الاسم',
    'الاصل',
    'تسمين',
    'مرتجع تسمين',
    'امهات',
    'مرتجع امهات',
    'التحصيل',
    'الصافي',
    'طلب ت',
    'طلب م',
  ];
}

class _GridColumn extends GridColumn {
  _GridColumn(String name, [double? width])
    : super(
        columnName: name,
        label: Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 16.sp)),
        ),
      );
}
