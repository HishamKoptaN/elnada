import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../customers/domain/entities/customer_daily_reports_res_entity.dart';
import '../../../customers/present/bloc/customers_bloc.dart';
import '../../domain/entities/create_daily_collaction_req_entity.dart';
import '../../domain/usecases/daily_collections_use_cases.dart';
part 'daily_collections_bloc.freezed.dart';
part 'daily_collections_event.dart';
part 'daily_collections_state.dart';

@singleton
class DailyCollectionsBloc
    extends Bloc<DailyCollectionsEvent, DailyCollectionsState> {
  DailyCollectionsBloc(this.dailyCollectionsUseCases, this.customersBloc)
    : super(const DailyCollectionsState.initial()) {
    on<DailyCollectionsEvent>((event, emit) async {
      await event.when(
        dataChanged: (createDailyCollectionReq) async {
          emitLoaded(
            emit: emit,
            createDailyCollectionReq: createDailyCollectionReq,
          );
        },
        create: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitLoaded(
                emit: emit,
                createDailyCollectionReq: state.createDailyCollectionReq,
              );
              final res = await dailyCollectionsUseCases.create(
                createDailyCollectionReq: state.createDailyCollectionReq,
              );
              await res.when(
                success: (res) async {
                  emitLoaded(
                    emit: emit,
                    createDailyCollectionReq: state.createDailyCollectionReq
                        .copyWith(amount: null),
                  );
                  customersBloc.add(
                    CustomersEvent.updateCustomerDailyReport(
                      customerDailyReport:
                          res ?? const CustomerDailyReportEntity(),
                    ),
                  );
                  emit(const DailyCollectionsState.success());
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
    required Emitter<DailyCollectionsState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    emit(DailyCollectionsState.failure(apiErrorModel: apiErrorModel));
  }

  void emitLoaded({
    required Emitter<DailyCollectionsState> emit,
    required CreateDailyCollectionReqEntity createDailyCollectionReq,
  }) {
    emit(
      DailyCollectionsState.loaded(
        createDailyCollectionReq: createDailyCollectionReq,
      ),
    );
  }
}
