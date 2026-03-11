import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

abstract class CellRenderer {
  Widget render(DataGridCell cell);
}
