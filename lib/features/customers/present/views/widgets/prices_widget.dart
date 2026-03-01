import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:taha/features/products/domain/entities/product_entity.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../products/present/bloc/products_bloc.dart';
import '../../../domain/entities/customer_entity.dart';

class PricesWidget extends StatelessWidget {
  final List<ProductPriceEntity> prices;
  const PricesWidget({super.key, required this.prices});

  @override
  Widget build(BuildContext context) {
    if (prices.isEmpty) {
      return const Center(child: Text('لا توجد أسعار متاحة'));
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: prices.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: prices.isNotEmpty ? prices.length : 1,
        crossAxisSpacing: 1.w,
        mainAxisSpacing: 1.h,
        childAspectRatio: 8,
      ),
      itemBuilder: (context, index) {
        final item = prices[index];
        return _buildPriceCard(context: context, productPrice: item);
      },
    );
  }

  Widget _buildPriceCard({
    required BuildContext context,
    required ProductPriceEntity productPrice,
  }) {
    return GestureDetector(
      onTap: () {
        _showEditPriceDialog(context: context, productPrice: productPrice);
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
              productPrice.productName ?? '',
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              productPrice.price?.toString() ?? '',
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.w900,
                color: Colors.blue[900],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditPriceDialog({
    required BuildContext context,
    required ProductPriceEntity productPrice,
  }) {
    final TextEditingController priceController = TextEditingController(
      text: productPrice.price?.toString() ?? '',
    );
    getIt<ProductsBloc>().add(
      ProductsEvent.dataChanged(
        updateProductPriceReq: UpdateProductPriceReqEntity(
          productId: GenericFormzInput.dirty(productPrice.productId ?? 0),
          price: GenericFormzInput.dirty(productPrice.price ?? ''),
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
                        'تعديل سعر ${productPrice.productName ?? ''}',
                      ),
                      content: TextFormField(
                        controller: priceController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          labelText: 'السعر',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (v) {
                          getIt<ProductsBloc>().add(
                            ProductsEvent.dataChanged(
                              updateProductPriceReq: state.updateProductPriceReq
                                  .copyWith(
                                    productId: GenericFormzInput.dirty(
                                      productPrice.productId ?? 0,
                                    ),
                                    price: GenericFormzInput.dirty(v),
                                  ),
                            ),
                          );
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('إلغاء'),
                        ),
                        TextButton(
                          onPressed: hasChanges
                              ? () {
                                  getIt<ProductsBloc>().add(
                                    ProductsEvent.updateProductPrice(),
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
