import 'package:flutter/material.dart';
import '../../../../../domain/entities/customer_entity.dart';

class CustomerInfoDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('الاسم: ${customer?.name ?? ''}'),
              SizedBox(height: 8),
              Text('رقم التليفون: ${customer?.phone ?? ''}'),
              SizedBox(height: 8),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('إغلاق'),
            ),
          ],
        );
      },
    );
  }
}
