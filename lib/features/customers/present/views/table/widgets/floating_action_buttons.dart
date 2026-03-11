import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({
    super.key,
    required this.onShare,
    required this.onPrint,
  });

  final VoidCallback onShare;
  final VoidCallback onPrint;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.extended(
          onPressed: onShare,
          backgroundColor: Colors.green[600],
          icon: Icon(Icons.share, color: Colors.white, size: 20.sp),
          label: Text(
            'مشاركة',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        FloatingActionButton.extended(
          onPressed: onPrint,
          backgroundColor: Colors.blue[700],
          icon: Icon(Icons.print, color: Colors.white, size: 20.sp),
          label: Text(
            'طباعة',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
