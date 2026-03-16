import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeriodSelector extends StatelessWidget {
  const PeriodSelector({
    super.key,
    required this.period,
    required this.onChange,
  });
  final String period;
  final VoidCallback onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'الفترة: $period',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: onChange,
            child: Text('تغيير', style: TextStyle(fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
