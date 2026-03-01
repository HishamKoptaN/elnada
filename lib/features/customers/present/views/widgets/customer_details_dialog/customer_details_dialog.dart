import 'package:flutter/material.dart';
import '../../../../domain/entities/customer_entity.dart';
import 'types/customer_info_dialog.dart';
import 'types/weight_dialog.dart';
import 'types/collection_dialog.dart';
import 'types/order_dialog.dart';

class CustomerDetailsDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int index,
  }) {
    switch (index) {
      case 2:
        WeightDialog.show(
          context: context,
          customer: customer,
          productId: 1,
          title: 'إضافة وزن التسمين',
        );
        break;
      case 3:
        WeightDialog.show(
          context: context,
          customer: customer,
          productId: 2,
          title: 'إضافة وزن الأمهات',
        );
        break;
      case 4:
        CollectionDialog.show(context: context, customer: customer);
        break;
      case 6:
        OrderDialog.show(context: context, customer: customer, productId: 1);
        break;
      case 7:
        OrderDialog.show(context: context, customer: customer, productId: 2);
        break;
      default:
        CustomerInfoDialog.show(context: context, customer: customer);
    }
  }
}
