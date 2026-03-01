import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../daily_orders/domain/entities/create_daily_order_req_entity.dart';
import '../../../../../../daily_orders/present/bloc/daily_orders_bloc.dart';
import '../../../../../domain/entities/customer_entity.dart';

class OrderDialog {
  static void show({
    required BuildContext context,
    required CustomerEntity customer,
    required int productId,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        getIt<DailyOrdersBloc>().add(
          DailyOrdersEvent.dataChanged(
            createDailyOrderReq: CreateDailyOrderReqEntity(
              productId: GenericFormzInput.dirty(productId),
              customerId: GenericFormzInput.dirty(customer.id),
              count: GenericFormzInput.dirty(""),
            ),
          ),
        );
        return BlocConsumer<DailyOrdersBloc, DailyOrdersState>(
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
                  title: Text('إضافة طلب'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(' ${customer.name ?? ''}'),
                      SizedBox(height: 16),
                      TextFormField(
                        onChanged: (value) {
                          getIt<DailyOrdersBloc>().add(
                            DailyOrdersEvent.dataChanged(
                              createDailyOrderReq: state.createDailyOrderReq
                                  .copyWith(
                                    productId: GenericFormzInput.dirty(
                                      state.createDailyOrderReq.productId.value,
                                    ),
                                    customerId: GenericFormzInput.dirty(
                                      customer.id,
                                    ),
                                    count: GenericFormzInput.dirty(value),
                                  ),
                            ),
                          );
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          labelText: 'العدد',
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
                      onPressed: () {
                        getIt<DailyOrdersBloc>().add(DailyOrdersEvent.create());
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          state.createDailyOrderReq.isValid
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
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
    );
  }
}
