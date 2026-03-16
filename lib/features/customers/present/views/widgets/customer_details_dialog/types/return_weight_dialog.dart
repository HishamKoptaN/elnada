import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../../return_products/domain/entities/return_product_weight_entity.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../return_products/present/bloc/return_products_bloc.dart';

class ReturnWeightDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int productId,
    required String title,
  }) {
    final FocusNode weightFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () => weightFocus.requestFocus());
        getIt<ReturnProductsBloc>().add(
          ReturnProductsEvent.dataChanged(
            returnProductWeightReq: ReturnProductWeightReqEntity(
              customerId: GenericFormzInput.dirty(customer.id),
              productId: GenericFormzInput.dirty(productId),
            ),
          ),
        );
        return BlocConsumer<ReturnProductsBloc, ReturnProductsState>(
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
                final bool isValid =
                    state.formzSubmissionStatus ==
                    FormzSubmissionStatus.success;
                return AlertDialog(
                  title: Text(title, style: TextStyle(fontSize: 16.sp)),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 20.h,
                    children: [
                      Text(
                        customer.name ?? '',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        focusNode: weightFocus,
                        initialValue: state.maybeMap(
                          loaded: (s) =>
                              s.returnProductWeightReq.weight?.value.toString(),
                          orElse: () => '',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*\.?\d*'),
                          ),
                        ],
                        onChanged: (value) {
                          getIt<ReturnProductsBloc>().add(
                            ReturnProductsEvent.dataChanged(
                              returnProductWeightReq: state
                                  .returnProductWeightReq
                                  .copyWith(
                                    weight: GenericFormzInput.dirty(value),
                                  ),
                            ),
                          );
                        },
                        decoration: InputDecoration(
                          labelText: 'وزن الراجع',
                          labelStyle: TextStyle(fontSize: 16.sp),
                          border: const OutlineInputBorder(),
                        ),
                        onFieldSubmitted: (_) => buttonFocus.requestFocus(),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                    ),
                    ElevatedButton(
                      focusNode: buttonFocus,
                      onPressed: isValid
                          ? () {
                              getIt<ReturnProductsBloc>().add(
                                const ReturnProductsEvent.updateProductPrice(),
                              );
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isValid ? Colors.green : Colors.grey,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child: Text('إضافة', style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        );
      },
    );
  }
}
