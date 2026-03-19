import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../bloc/customers_bloc.dart';
import 'customer_details_dialog.dart';
import 'grid_columns.dart';

class CellTapHandler {
  static void handleCellTap({
    required DataGridCellTapDetails details,
    required CustomersState state,
    required DateTime selectedDate,
    required bool canInsertPreviusDayData,
    required bool isDesktop,
    required BuildContext context,
  }) {
    if (details.rowColumnIndex.rowIndex > 0) {
      final currentColumns = GridColumnsFactory.buildColumns(
        isDesktop: isDesktop,
      );
      final String clickedColumnName =
          currentColumns[details.rowColumnIndex.columnIndex].columnName;
      final int originalIndex = GridColumnsFactory.masterColumns.indexOf(
        clickedColumnName,
      );
      final customerReport = state.maybeMap(
        loaded: (loadedState) {
          return loadedState
              .customersRes
              .customerDailyReports?[details.rowColumnIndex.rowIndex - 1];
        },
        orElse: () => null,
      );
      if (customerReport != null) {
        CustomerDetailsDialog.show(
          context: context,
          customerDailyReport: customerReport,
          productDailyPrices: state.maybeMap(
            loaded: (loadedState) {
              return loadedState.customersRes.productDailyPrices ?? [];
            },
            orElse: () {
              return [];
            },
          ),
          selectedDate: selectedDate,
          canInsertPreviusDayData: canInsertPreviusDayData,
          index: originalIndex,
        );
      }
    }
  }

  static void handleEnterKey(
    BuildContext context,
    int rowIndex,
    bool isDesktop,
    CustomersState state,
    bool canInsertPreviusDayData,
  ) {
    final customerDailyReport = state.maybeMap(
      loaded: (loadedState) {
        return loadedState.customersRes.customerDailyReports?[rowIndex];
      },
      orElse: () => null,
    );
    if (customerDailyReport != null) {
      CustomerDetailsDialog.show(
        context: context,
        productDailyPrices: state.maybeMap(
          loaded: (loadedState) {
            return loadedState.customersRes.productDailyPrices ?? [];
          },
          orElse: () {
            return [];
          },
        ),
        customerDailyReport: customerDailyReport,
        selectedDate: state.maybeMap(
          loaded: (s) {
            return s.selectedDate;
          },
          orElse: () {
            return DateTime.now();
          },
        ),
        canInsertPreviusDayData: canInsertPreviusDayData,
        index: 0,
      );
    }
  }
}
