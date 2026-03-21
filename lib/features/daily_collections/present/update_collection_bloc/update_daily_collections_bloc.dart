import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/blocs/bloc/customers_bloc.dart';
import '../../domain/entities/create_daily_collaction_req_entity.dart';
import '../../domain/entities/update_daily_collection_req_entity.dart';
import '../../domain/usecases/daily_collections_use_cases.dart';
part 'update_daily_collections_bloc.freezed.dart';
part 'update_daily_collections_event.dart';
part 'update_daily_collections_state.dart';

@singleton
class UpdateDailyCollectionsBloc
    extends Bloc<UpdateDailyCollectionsEvent, UpdateDailyCollectionsState> {
  UpdateDailyCollectionsBloc(this.dailyCollectionsUseCases, this.customersBloc)
    : super(const UpdateDailyCollectionsState.initial()) {
    on<UpdateDailyCollectionsEvent>((event, emit) async {
      await event.when(
        dataChanged: (updateDailyCollectionReq) async {
          emitLoaded(
            emit: emit,
            updateDailyCollectionReq: updateDailyCollectionReq,
          );
        },
        update: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                updateDailyCollectionReq: state.updateDailyCollectionReq,
              );
              final res = await dailyCollectionsUseCases.update(
                updateDailyCollectionReq: state.updateDailyCollectionReq,
              );
              await res.when(
                success: (res) async {
                  emitLoaded(
                    emit: emit,
                    updateDailyCollectionReq: state.updateDailyCollectionReq
                        .copyWith(amount: null),
                  );
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport:
                          res ?? const CustomerDailyReportEntity(),
                    ),
                  );
                  emit(const UpdateDailyCollectionsState.success());
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
  final DailyCollectionsUseCases dailyCollectionsUseCases;
  final CustomersBloc customersBloc;
  void emitFaliure({
    required Emitter<UpdateDailyCollectionsState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(UpdateDailyCollectionsState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<UpdateDailyCollectionsState> emit,
    required UpdateDailyCollectionReqEntity updateDailyCollectionReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      UpdateDailyCollectionsState.loaded(
        updateDailyCollectionReq: updateDailyCollectionReq,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            ((Formz.validate([
                      updateDailyCollectionReq.amount ??
                          const GenericFormzInput.pure(),
                    ]) &&
                    updateDailyCollectionReq.hasChanged)
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
