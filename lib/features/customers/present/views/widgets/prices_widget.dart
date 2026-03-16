import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/date_helpers.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../products/domain/entities/product_entity.dart';
import '../../../../products/present/bloc/products_bloc.dart';
import '../../../domain/entities/customer_daily_reports_res_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PricesWidget extends StatelessWidget {
  const PricesWidget({
    super.key,
    required this.prices,
    required this.selectedDate,
    required this.canInsertPreviusDayData,
  });
  final List<ProductPriceEntity> prices;
  final DateTime selectedDate;
  final bool canInsertPreviusDayData;
  @override
  Widget build(BuildContext context) {
    if (prices.isEmpty) {
      return const Center(child: Text('لا توجد أسعار متاحة'));
    }
    return SizedBox(
      height: 70.h,
      child: Row(
        children: prices.map((item) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: _buildPriceCard(
                context: context,
                productPrice: item,
                canInsertPreviusDayData: canInsertPreviusDayData,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPriceCard({
    required BuildContext context,
    required ProductPriceEntity productPrice,
    required bool canInsertPreviusDayData,
  }) {
    return GestureDetector(
      onTap: () {
        if (canInsertPreviusDayData) {
          _showEditPriceDialog(context: context, productPrice: productPrice);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.blue.withValues(alpha: 0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              productPrice.product?.name ?? '',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 4.h),
            if (productPrice.productDailyprice?.price != null)
              Text(
                productPrice.productDailyprice?.price ?? '',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue[900],
                ),
              )
            else
              FaIcon(FontAwesomeIcons.plus, color: Colors.blue, size: 20.0.sp),
          ],
        ),
      ),
    );
  }

  void _showEditPriceDialog({
    required BuildContext context,
    required ProductPriceEntity productPrice,
  }) {
    getIt<ProductsBloc>().add(
      ProductsEvent.dataChanged(
        updateProductPriceReq: UpdateProductPriceReqEntity(
          productId: GenericFormzInput.dirty(productPrice.product?.id ?? 0),
          price: GenericFormzInput.dirty(
            productPrice.productDailyprice?.price?.toString() ?? '',
          ),
          date: !selectedDate.isToday && canInsertPreviusDayData
              ? selectedDate
              : null,
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                Navigator.pop(context);
              },
              failure: (apiErrorModel) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(apiErrorModel.message ?? 'حدث خطأ ما'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loaded: (state) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    final hasChanges = state.updateProductPriceReq
                        .hasPriceChanged(originalProductPrice: productPrice);
                    return AlertDialog(
                      title: Text(
                        'تعديل سعر ${productPrice.product?.name ?? ''}',
                      ),
                      content: TextFormField(
                        initialValue:
                            productPrice.productDailyprice?.price?.toString() ??
                            '',
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'السعر',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (v) {
                          getIt<ProductsBloc>().add(
                            ProductsEvent.dataChanged(
                              updateProductPriceReq: state.updateProductPriceReq
                                  .copyWith(price: GenericFormzInput.dirty(v)),
                            ),
                          );
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('إلغاء'),
                        ),
                        TextButton(
                          onPressed: hasChanges
                              ? () {
                                  getIt<ProductsBloc>().add(
                                    const ProductsEvent.updateProductPrice(),
                                  );
                                }
                              : null,
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              hasChanges ? Colors.blue : Colors.grey,
                            ),
                          ),
                          child:
                              getIt<ProductsBloc>().state
                                      .mapOrNull(
                                        loaded: (s) => s.formzSubmissionStatus,
                                      )
                                      ?.isInProgress ==
                                  true
                              ? const CustomCircularProgress(size: 20)
                              : Text(
                                  'حفظ',
                                  style: TextStyle(
                                    color: hasChanges
                                        ? Colors.black
                                        : Colors.white30,
                                  ),
                                ),
                        ),
                      ],
                    );
                  },
                );
              },
              loading: (_) {
                return const CustomCircularProgress();
              },
              orElse: () {
                return const CustomCircularProgress();
              },
            );
          },
        );
      },
    );
  }
}
