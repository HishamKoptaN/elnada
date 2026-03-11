import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../daily_collections/domain/entities/daily_collection_entity.dart';
import 'statement_cell_renderer.dart';

class CollectionCellRenderer implements CellRenderer {
  @override
  Widget render(DataGridCell cell) {
    final List<DailyCollectionEntity> collections = cell.value;
    double total = collections.fold(
      0,
      (sum, c) => sum + (double.tryParse(c.amount.toString()) ?? 0),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...collections.map(
          (c) => Text(
            "${c.amount} (${c.createdAt ?? ''})",
            style: TextStyle(fontSize: 11.sp, color: Colors.green[900]),
          ),
        ),
        if (collections.length > 1)
          Container(
            margin: EdgeInsets.only(top: 2.h),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.green[100]!)),
            ),
            child: Text(
              'المجموع: ${total.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
          ),
      ],
    );
  }
}
