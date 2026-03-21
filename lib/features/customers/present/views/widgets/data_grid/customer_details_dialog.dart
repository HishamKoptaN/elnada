import 'package:flutter/material.dart';
import '../../../../../../core/utils/date_helpers.dart';
import '../../../../../price_discount/domain/entities/price_discount_entity.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../customer_details_dialog/types/customer_info_dialog.dart';
import '../customer_details_dialog/types/number_dialog.dart';
import '../customer_details_dialog/types/price_discount_dialog.dart';
import '../customer_details_dialog/types/transaction/return_weight_dialog.dart';
import '../customer_details_dialog/types/transaction/transaction_dialog.dart';
import '../customer_details_dialog/types/collection/collection_dialog.dart';
import '../customer_details_dialog/types/order_dialog.dart';

class CustomerDetailsDialog {
  static void show({
    required BuildContext context,
    required List<ProductPriceEntity> productDailyPrices,
    required CustomerDailyReportEntity customerDailyReport,
    required DateTime selectedDate,
    required bool canInsertPreviusDayData,
    required int index,
  }) {
    switch (index) {
      case 0:
        CustomerNumberDialog.show(
          context: context,
          customer: customerDailyReport.customer!,
        );
        break;
      case 1:
        CustomerInfoDialog.show(
          context: context,
          customer: customerDailyReport.customer!,
          id: customerDailyReport.id!,
        );
        break;
      case 3:
        if (productDailyPrices.any((element) {
          return element.product?.id == 1 &&
              element.productDailyprice?.price != null &&
              element.productDailyprice!.price!.isNotEmpty;
        })) {
          if (selectedDate.isToday || canInsertPreviusDayData) {
            TransactionDialog.show(
              context: context,
              title: 'إضافة وزن التسمين',
              customer: customerDailyReport.customer!,
              productId: 1,
              selectedDate: selectedDate,
              canInsertPreviusDayData: canInsertPreviusDayData,
            );
          }
        }
        break;
      case 4:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          ReturnWeightDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 1,
            title: 'راجع التسمين',
            selectedDate: selectedDate,
            canInsertPreviusDayData: canInsertPreviusDayData,
          );
        }
        break;
      case 5:
        if (productDailyPrices.any((element) {
          return element.product?.id == 2 &&
              element.productDailyprice?.price != null &&
              element.productDailyprice!.price!.isNotEmpty;
        })) {
          if (selectedDate.isToday || canInsertPreviusDayData) {
            TransactionDialog.show(
              context: context,
              customer: customerDailyReport.customer!,
              productId: 2,
              title: 'إضافة وزن الأمهات',
              selectedDate: selectedDate,
              canInsertPreviusDayData: canInsertPreviusDayData,
            );
          }
        }
        break;
      case 6:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          ReturnWeightDialog.show(
            context: context,
            title: 'راجع الأمهات',
            customer: customerDailyReport.customer!,
            productId: 2,
            selectedDate: selectedDate,
            canInsertPreviusDayData: canInsertPreviusDayData,
          );
        }
        break;
      case 7:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          CollectionDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            selectedDate: selectedDate,
            canInsertPreviusDayData: canInsertPreviusDayData,
          );
        }
        break;
      case 9:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          OrderDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 1,
          );
        }
        break;
      case 10:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          OrderDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 2,
          );
        }
        break;
      case 11:
        PriceDiscountDialog.show(
          context: context,
          priceDiscount:
              customerDailyReport.priceDiscounts?.firstWhere(
                (element) => element.product?.id == 2,
                orElse: () => const PriceDiscountEntity(),
              ) ??
              const PriceDiscountEntity(),
          customer: customerDailyReport.customer!,
          productId: 1,
        );
        break;
      case 12:
        PriceDiscountDialog.show(
          context: context,
          priceDiscount:
              customerDailyReport.priceDiscounts?.firstWhere(
                (element) => element.product?.id == 1,
                orElse: () => const PriceDiscountEntity(),
              ) ??
              const PriceDiscountEntity(),
          customer: customerDailyReport.customer!,
          productId: 2,
        );
        break;
      default:
        break;
    }
  }
}
