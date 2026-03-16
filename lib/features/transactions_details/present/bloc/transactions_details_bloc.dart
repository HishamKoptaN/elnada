import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/update_transaction_details_req_entity.dart';
import '../../domain/usecases/transactions_details_use_cases.dart';
part 'transactions_details_bloc.freezed.dart';
part 'transactions_details_event.dart';
part 'transactions_details_state.dart';

@singleton
class TransactionsDetailsBloc
    extends Bloc<TransactionsDetailsEvent, TransactionsDetailsState> {
  TransactionsDetailsBloc(this.transactionsDetailsUseCases, this.customersBloc)
    : super(const TransactionsDetailsState.initial()) {
    on<TransactionsDetailsEvent>((event, emit) async {
      await event.when(
        dataChanged: (createDailyTransactionReq) async {
          emitLoaded(
            emit: emit,
            createDailyTransactionReq: createDailyTransactionReq,
          );
        },
        update: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
                createDailyTransactionReq: state.createDailyTransactionReq,
              );
              final res = await transactionsDetailsUseCases.update(
                updateTransactionDetailsReq: state.createDailyTransactionReq,
              );
              await res.when(
                success: (res) async {
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport: res!,
                    ),
                  );
                  emit(const TransactionsDetailsState.success());
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
  final TransactionsDetailsUseCases transactionsDetailsUseCases;
  final CustomersBloc customersBloc;
  void emitFaliure({
    required Emitter<TransactionsDetailsState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    emit(TransactionsDetailsState.failure(apiErrorModel: apiErrorModel));
  }

  void emitLoaded({
    required Emitter<TransactionsDetailsState> emit,
    required UpdateTransactionDetailsReqEntity createDailyTransactionReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      TransactionsDetailsState.loaded(
        createDailyTransactionReq: createDailyTransactionReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            ((Formz.validate([
                      createDailyTransactionReq.weight ??
                          const GenericFormzInput.pure(),
                    ]) &&
                    createDailyTransactionReq.hasChanged)
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
