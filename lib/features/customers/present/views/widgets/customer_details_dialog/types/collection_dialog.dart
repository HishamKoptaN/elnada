import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_collections/domain/entities/create_daily_collaction_req_entity.dart';
import '../../../../../../daily_collections/present/bloc/daily_collections_bloc.dart';
import '../../../../../domain/entities/customer_entity.dart';

class CollectionDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        getIt<DailyCollectionsBloc>().add(
          DailyCollectionsEvent.dataChanged(
            createDailyCollectionReq: CreateDailyCollectionReqEntity(
              customerId: GenericFormzInput.dirty(customer.id),
              amount: GenericFormzInput.dirty(''),
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
                  title: Text('إضافة تحصيل'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' ${customer.name ?? ''}',
                        style: TextStyle(
                          fontSize: 6.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        initialValue:
                            state.createDailyCollectionReq.amount.value,
                        onChanged: (value) {
                          getIt<DailyCollectionsBloc>().add(
                            DailyCollectionsEvent.dataChanged(
                              createDailyCollectionReq: state
                                  .createDailyCollectionReq
                                  .copyWith(
                                    customerId: GenericFormzInput.dirty(
                                      customer.id,
                                    ),
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
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('إلغاء'),
                    ),
                    ElevatedButton(
                      onPressed: state.createDailyCollectionReq.isValid
                          ? () {
                              getIt<DailyCollectionsBloc>().add(
                                DailyCollectionsEvent.create(),
                              );
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.createDailyCollectionReq.isValid
                              ? Colors.green
                              : Colors.grey,
                        ),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                      ),
                      child: Text('حفظ'),
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
