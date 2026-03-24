import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../../../../core/common/utils/number_formatter.dart';
import '../styles/cell_style_manager.dart';

/// Factory for creating different types of cell renderers
class CellRendererFactory {
  /// Creates a regular cell widget
  static Widget createRegularCell(DataGridCell cell) {
    return Container(
      alignment: CellStyleManager.getCellAlignment(),
      padding: CellStyleManager.getCellPadding(),
      decoration: CellStyleManager.getCellDecoration(),
      child: Text(
        NumberFormatter.format(cell.value),
        style: CellStyleManager.getCellStyle(cell.columnName),
      ),
    );
  }

  /// Creates a summary cell widget
  static Widget createSummaryCell(String summaryValue) {
    final formattedValue = NumberFormatter.format(summaryValue);

    return Container(
      alignment: CellStyleManager.getCellAlignment(),
      padding: CellStyleManager.getSummaryPadding(),
      decoration: CellStyleManager.getSummaryDecoration(),
      child: Text(
        formattedValue,
        style: CellStyleManager.getSummaryCellStyle(),
      ),
    );
  }

  /// Creates a header cell widget (if needed in the future)
  static Widget createHeaderCell(String headerText) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Text(
        headerText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
          color: Colors.black87,
        ),
      ),
    );
  }

  /// Creates an empty cell widget
  static Widget createEmptyCell() {
    return Container(
      alignment: CellStyleManager.getCellAlignment(),
      padding: CellStyleManager.getCellPadding(),
      child: const Text(''),
    );
  }

  /// Creates a cell with custom styling (for special cases)
  static Widget createCustomCell({
    required dynamic value,
    required String columnName,
    TextStyle? textStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
    Alignment? alignment,
  }) {
    return Container(
      alignment: alignment ?? CellStyleManager.getCellAlignment(),
      padding: padding ?? CellStyleManager.getCellPadding(),
      decoration: BoxDecoration(color: backgroundColor),
      child: Text(
        NumberFormatter.format(value),
        style: textStyle ?? CellStyleManager.getCellStyle(columnName),
      ),
    );
  }
}
