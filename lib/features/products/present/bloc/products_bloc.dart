import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/product_use_cases.dart';
part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

@singleton
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsUseCases productsUseCases;
  final CustomersBloc customersBloc;
  ProductsBloc(this.productsUseCases, this.customersBloc)
    : super(const ProductsState.initial()) {
    on<ProductsEvent>((event, emit) async {
      await event.when(
        dataChanged: (updateProductPriceReq) async {
          emitLoaded(emit: emit, updateProductPriceReq: updateProductPriceReq);
        },
        updateProductPrice: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                updateProductPriceReq: state.updateProductPriceReq,
              );
              final res = await productsUseCases.updateProductPrice(
                updateProductPriceReq: state.updateProductPriceReq,
              );
              await res.when(
                success: (res) async {
                  customersBloc.add(
                    CustomersEvent.priceChanged(
                      productPrice: res ?? ProductPriceEntity(),
                    ),
                  );
                  emit(ProductsState.success());

                  emitLoaded(
                    emit: emit,
                    updateProductPriceReq: state.updateProductPriceReq,
                  );
                },
                failure: (apiErrorModel) async {
                  emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
                },
              );
            },
          );
        },
      );
    });
  }
  void emitFaliure({
    required Emitter<ProductsState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(ProductsState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<ProductsState> emit,
    required UpdateProductPriceReqEntity updateProductPriceReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ProductsState.loaded(
        updateProductPriceReq: updateProductPriceReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  updateProductPriceReq.productId,
                  updateProductPriceReq.price,
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
