import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableCell extends StatelessWidget {
  const TableCell({
    super.key,
    required this.text,
    required this.width,
    this.isDate = false,
    this.isAmount = false,
    this.amountColor,
    this.isBold = false,
    this.isLastColumn = false,
  });

  final String text;
  final double width;
  final bool isDate;
  final bool isAmount;
  final Color? amountColor;
  final bool isBold;
  final bool isLastColumn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60.h,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey[300]!, width: 0.5),
          bottom: BorderSide(color: Colors.grey[300]!, width: 0.5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isDate) ...[
            Text(
              text,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ] else if (isAmount) ...[
            Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                color: amountColor ?? Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            if (!isLastColumn) ...[
              SizedBox(height: 2.h),
              Text(
                'ريال',
                style: TextStyle(fontSize: 8.sp, color: Colors.grey[500]),
                textAlign: TextAlign.center,
              ),
            ],
          ] else ...[
            Text(
              text,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
