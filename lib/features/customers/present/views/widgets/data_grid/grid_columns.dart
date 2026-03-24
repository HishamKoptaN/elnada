import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class GridColumnsFactory {
  static List<GridColumn> buildColumns({required bool isDesktop}) {
    return [
      _GridColumn(name: 'الاسم', width: 200),
      _GridColumn(name: 'الاصل', width: 120),
      if (isDesktop) ...[_GridColumn(name: 'تسمين', width: 160)],
      _GridColumn(name: 'راجع تسمين', width: 80),
      if (isDesktop) ...[_GridColumn(name: 'امهات', width: 160)],
      _GridColumn(name: 'راجع امهات', width: 80),
      _GridColumn(name: 'التحصيل', width: 160),
      _GridColumn(name: 'الصافي', width: 160),
      _GridColumn(name: 'طلب ت', width: 80),
      _GridColumn(name: 'طلب م', width: 80),
      _GridColumn(name: 'فرق سعر ت', width: 80),
      _GridColumn(name: 'فرق سعر م', width: 80),
    ];
  }

  static const List<String> masterColumns = [
    'الاسم',
    'الاصل',
    'تسمين',
    'راجع تسمين',
    'امهات',
    'راجع امهات',
    'التحصيل',
    'الصافي',
    'طلب ت',
    'طلب م',
    'فرق سعر ت',
    'فرق سعر م',
  ];
}

class _GridColumn extends GridColumn {
  _GridColumn({required String name, required double? width})
    : super(
        columnName: name,
        width: width ?? double.nan,
        label: Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 16.sp),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );
}
