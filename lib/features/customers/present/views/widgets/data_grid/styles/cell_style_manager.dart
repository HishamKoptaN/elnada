import 'package:flutter/material.dart';
import '../models/grid_columns.dart';

/// Manages cell styling and color schemes for the data grid
class CellStyleManager {
  /// Returns the appropriate text color based on column name
  static Color getTextColor(String columnName) {
    switch (columnName) {
      case GridColumns.originalBalance:
        return Colors.grey[700]!;
      case GridColumns.fattening:
      case GridColumns.mothers:
        return Colors.orange[900]!;
      case GridColumns.fatteningReturns:
      case GridColumns.mothersReturns:
        return Colors.red[600]!;
      case GridColumns.collections:
        return Colors.green[700]!;
      case GridColumns.netBalance:
        return Colors.red[900]!;
      case GridColumns.fatteningOrders:
      case GridColumns.mothersOrders:
        return Colors.blue[700]!;
      default:
        return Colors.black;
    }
  }

  /// Returns the text style for regular cells
  static TextStyle getCellStyle(String columnName, {double fontSize = 18}) {
    return TextStyle(
      fontSize: fontSize,
      color: getTextColor(columnName),
    );
  }

  /// Returns the text style for summary cells
  static TextStyle getSummaryCellStyle({double fontSize = 16}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: Colors.green,
    );
  }

  /// Returns container styling for cells
  static BoxDecoration getCellDecoration() {
    return const BoxDecoration();
  }

  /// Returns container styling for summary cells
  static BoxDecoration getSummaryDecoration() {
    return const BoxDecoration();
  }

  /// Returns padding for cells
  static EdgeInsets getCellPadding() {
    return const EdgeInsets.all(8.0);
  }

  /// Returns padding for summary cells
  static EdgeInsets getSummaryPadding() {
    return const EdgeInsets.all(8);
  }

  /// Returns alignment for cells
  static Alignment getCellAlignment() {
    return Alignment.center;
  }
}
