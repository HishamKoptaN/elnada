import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../blocs/bloc/customers_bloc.dart';
import 'cell_tap_handler.dart';
import 'grid_columns.dart';

class KeyboardHandler {
  static KeyEventResult handleKeyEvent(
    KeyEvent event,
    DataGridController dataGridController,
    CustomersState state,
    DateTime selectedDate,
    bool canInsertPreviusDayData,
    bool isDesktop,
    BuildContext context,
  ) {
    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter) {
      final RowColumnIndex currentCell = dataGridController.currentCell;
      if (currentCell.rowIndex > 0) {
        final details = DataGridCellTapDetails(
          rowColumnIndex: currentCell,
          column: GridColumnsFactory.buildColumns(
            isDesktop: isDesktop,
          )[currentCell.columnIndex],
          kind: PointerDeviceKind.unknown,
          globalPosition: Offset.zero,
          localPosition: Offset.zero,
        );
        CellTapHandler.handleCellTap(
          details: details,
          state: state,
          selectedDate: selectedDate,
          isDesktop: isDesktop,
          context: context,
          canInsertPreviusDayData: canInsertPreviusDayData,
        );
      }
    }
    return KeyEventResult.ignored;
  }
}
