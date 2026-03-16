import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_orders/domain/entities/create_daily_order_req_entity.dart';
import '../../../../../../daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../../../../../price_discount/domain/entities/price_discount_entity.dart';
import '../../../../../../price_discount/domain/entities/price_discount_req_entity.dart';
import '../../../../../../price_discount/present/update_collection_bloc/update_price_discount_bloc.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';

class PriceDiscountDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required PriceDiscountEntity priceDiscount,
    required int productId,
  }) {
    final FocusNode countFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          countFocus.requestFocus();
        });
        getIt<PriceDiscountBloc>().add(
          PriceDiscountEvent.dataChanged(
            priceDiscountReq: PriceDiscountReqEntity(
              priceDiscount: priceDiscount,
              productId: GenericFormzInput.dirty(productId),
              customerId: GenericFormzInput.dirty(customer.id),
            ),
          ),
        );
        return BlocConsumer<PriceDiscountBloc, PriceDiscountState>(
          listener: (context, state) {
            state.maybeMap(
              success: (s) {
                Navigator.of(context).pop();
              },
              orElse: () => false,
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return AlertDialog(
                  title: Text(
                    ' فرق سعر ${productId == 1 ? "تسمين" : "أمهات"}',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' ${customer.name ?? ''}',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        focusNode: countFocus,
                        onChanged: (v) {
                          getIt<PriceDiscountBloc>().add(
                            PriceDiscountEvent.dataChanged(
                              priceDiscountReq: state.priceDiscountReq.copyWith(
                                priceDiscountAmount: GenericFormzInput.dirty(v),
                              ),
                            ),
                          );
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'فرق السعر',
                          border: OutlineInputBorder(),
                        ),
                        onFieldSubmitted: (_) {
                          buttonFocus.requestFocus();
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                    ),
                    ElevatedButton(
                      focusNode: buttonFocus,
                      onPressed: () {
                        getIt<PriceDiscountBloc>().add(
                          const PriceDiscountEvent.update(),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.priceDiscountReq.isValid
                              ? Colors.green
                              : Colors.grey,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child:
                          state.formzSubmissionStatus ==
                              FormzSubmissionStatus.inProgress
                          ? const CircularProgressIndicator()
                          : Text('حفظ', style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
    );
  }
}
