import 'package:flutter/material.dart';
import '../../../../../../core/utils/date_helpers.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';
import 'types/customer_info_dialog.dart';
import 'types/return_weight_dialog.dart';
import 'types/weight_dialog.dart';
import 'types/collection_dialog.dart';
import 'types/order_dialog.dart';

class CustomerDetailsDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required DateTime selectedDate,
    required int dailyReportId,
    required int index,
  }) {
    switch (index) {
      case 0:
        CustomerInfoDialog.show(
          context: context,
          customer: customer,
          id: dailyReportId,
        );
        break;
      case 2:
        if (selectedDate.isToday) {
          WeightDialog.show(
            context: context,
            customer: customer,
            productId: 1,
            title: 'إضافة وزن التسمين',
          );
        }
        break;
      case 3:
        if (selectedDate.isToday) {
          ReturnWeightDialog.show(
            context: context,
            customer: customer,
            productId: 1,
            title: 'راجع التسمين',
          );
        }

        break;
      case 4:
        if (selectedDate.isToday) {
          WeightDialog.show(
            context: context,
            customer: customer,
            productId: 2,
            title: 'إضافة وزن الأمهات',
          );
        }

        break;
      case 5:
        if (selectedDate.isToday) {
          ReturnWeightDialog.show(
            context: context,
            customer: customer,
            productId: 2,
            title: 'راجع الأمهات',
          );
        }

        break;
      case 6:
        if (selectedDate.isToday) {
          CollectionDialog.show(context: context, customer: customer);
        }
        break;
      case 8:
        if (selectedDate.isToday) {
          OrderDialog.show(context: context, customer: customer, productId: 1);
        }
        break;
      case 9:
        if (selectedDate.isToday) {
          OrderDialog.show(context: context, customer: customer, productId: 2);
        }
        break;
      default:
        break;
    }
  }
}
