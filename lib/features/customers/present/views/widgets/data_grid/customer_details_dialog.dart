import 'package:flutter/material.dart';
import '../../../../../../core/utils/date_helpers.dart';
import '../../../../../price_discount/domain/entities/price_discount_entity.dart';
import '../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../customer_details_dialog/types/customer_info_dialog.dart';
import '../customer_details_dialog/types/price_discount_dialog.dart';
import '../customer_details_dialog/types/return_weight_dialog.dart';
import '../customer_details_dialog/types/transaction_dialog.dart';
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
        CustomerInfoDialog.show(
          context: context,
          customer: customerDailyReport.customer!,
          id: customerDailyReport.id!,
        );
        break;
      case 2:
        if (productDailyPrices.any((element) {
          return element.product?.id == 1 &&
              element.productDailyprice?.price != null &&
              element.productDailyprice!.price!.isNotEmpty;
        })) {
          if (selectedDate.isToday || canInsertPreviusDayData) {
            TransactionDialog.show(
              context: context,
              customer: customerDailyReport.customer!,
              productId: 1,
              title: 'إضافة وزن التسمين',
              selectedDate: selectedDate,
              canInsertPreviusDayData: true,
            );
          }
        }
        break;
      case 3:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          ReturnWeightDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 1,
            title: 'راجع التسمين',
          );
        }
        break;
      case 4:
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
              canInsertPreviusDayData: true,
            );
          }
        }
        break;
      case 5:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          ReturnWeightDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 2,
            title: 'راجع الأمهات',
          );
        }
        break;
      case 6:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          CollectionDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
          );
        }
        break;
      case 8:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          OrderDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 1,
          );
        }
        break;
      case 9:
        if (selectedDate.isToday || canInsertPreviusDayData) {
          OrderDialog.show(
            context: context,
            customer: customerDailyReport.customer!,
            productId: 2,
          );
        }
        break;
      case 10:
        PriceDiscountDialog.show(
          context: context,
          priceDiscount:
              customerDailyReport.priceDiscounts?.firstWhere(
                (element) => element.product?.id == 2,
                orElse: () => const PriceDiscountEntity(),
              ) ??
              const PriceDiscountEntity(),
          customer: customerDailyReport.customer!,
          productId: 2,
        );
        break;
      case 11:
        PriceDiscountDialog.show(
          context: context,
          priceDiscount:
              customerDailyReport.priceDiscounts?.firstWhere(
                (element) => element.product?.id == 1,
                orElse: () => const PriceDiscountEntity(),
              ) ??
              const PriceDiscountEntity(),
          customer: customerDailyReport.customer!,
          productId: 1,
        );
        break;
      default:
        break;
    }
  }
}
