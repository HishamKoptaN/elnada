import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_collections/domain/entities/create_daily_collaction_req_entity.dart';
import '../../../../../../daily_collections/present/bloc/daily_collections_bloc.dart';
import '../../../../../domain/entities/customer_daily_reports_res_entity.dart';

class CollectionDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
  }) {
    final FocusNode amountFocus = FocusNode();
    final FocusNode buttonFocus = FocusNode();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration.zero, () {
          amountFocus.requestFocus();
        });
        getIt<DailyCollectionsBloc>().add(
          DailyCollectionsEvent.dataChanged(
            createDailyCollectionReq: CreateDailyCollectionReqEntity(
              customerId: GenericFormzInput.dirty(customer.id),
            ),
          ),
        );
        return BlocConsumer<DailyCollectionsBloc, DailyCollectionsState>(
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
                  title: Text('إضافة تحصيل', style: TextStyle(fontSize: 16.sp)),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
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
                          focusNode: amountFocus,
                          initialValue:
                              state.createDailyCollectionReq.amount?.value,
                          onChanged: (value) {
                            getIt<DailyCollectionsBloc>().add(
                              DailyCollectionsEvent.dataChanged(
                                createDailyCollectionReq: state
                                    .createDailyCollectionReq
                                    .copyWith(
                                      amount: GenericFormzInput.dirty(value),
                                    ),
                              ),
                            );
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            labelText: 'المبلغ',
                            labelStyle: TextStyle(fontSize: 16.sp),
                            border: const OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (_) {
                            buttonFocus.requestFocus();
                          },
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('إلغاء', style: TextStyle(fontSize: 16.sp)),
                    ),
                    ElevatedButton(
                      focusNode: buttonFocus,
                      onPressed: state.createDailyCollectionReq.isValid
                          ? () {
                              getIt<DailyCollectionsBloc>().add(
                                const DailyCollectionsEvent.create(),
                              );
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.createDailyCollectionReq.isValid
                              ? Colors.green
                              : Colors.grey,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child: Text('حفظ', style: TextStyle(fontSize: 16.sp)),
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
