import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerStatementHeader extends StatelessWidget {
  const CustomerStatementHeader({
    super.key,
    required this.customerName,
    required this.onPrint,
    required this.onShare,
  });
  final String customerName;
  final VoidCallback onPrint;
  final VoidCallback onShare;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'كشف حساب - $customerName',
        style: TextStyle(fontSize: 16.sp),
      ),
      backgroundColor: Colors.blue[700],
      foregroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(Icons.print, size: 20.sp),
          onPressed: onPrint,
        ),
        IconButton(
          icon: Icon(Icons.share, size: 20.sp),
          onPressed: onShare,
        ),
      ],
    );
  }
}
