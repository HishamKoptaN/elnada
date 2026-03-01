import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../data/mappers/customer_daily_reports_res_mapper.dart';
import '../../data/models/customer_daily_reports_res_model.dart';
import '../../domain/entities/customer_entity.dart';
import '../../domain/usecases/customers_use_cases.dart';
part 'customers_bloc.freezed.dart';
part 'customers_event.dart';
part 'customers_state.dart';

@singleton
class CustomersBloc extends HydratedBloc<CustomersEvent, CustomersState> {
  final CustomersUseCases customersUseCases;
  CustomersBloc(this.customersUseCases)
    : super(const CustomersState.initial()) {
    on<CustomersEvent>((event, emit) async {
      await event.when(
        getCustomers: (date) async {
          emit(
            CustomersState.loaded(
              customersRes: CustomersResEntity(),
              selectedDate: date,
            ),
          );
          final result = await customersUseCases.getCustomers(
            selectedDate: date,
          );
          await result.when(
            success: (res) {
              emit(
                CustomersState.loaded(
                  customersRes: res ?? CustomersResEntity(),
                  selectedDate: date,
                ),
              );
            },
            failure: (error) {
              emit(CustomersState.failure(apiErrorModel: error));
              emit(
                CustomersState.loaded(
                  customersRes: CustomersResEntity(),
                  selectedDate: date,
                ),
              );
            },
          );
        },
        searchCustomers: (date, query) async {
          // final res = await ordersUseCases.getOrders(
          //   packageId: 1,
          //   query: query,
          //   page: getMore ? (_meta?.currentPage ?? 0) + 1 : 1,
          // );
          // await res.when(
          //   success: (res) async {
          //     if (!getMore) {
          //       _searchOrders = res;
          //     } else if (getMore) {
          //       _searchOrders = [...?_searchOrders, ...res ?? []];
          //     }
          //     emitLoaded(emit: emit);
          //   },
          //   failure: (apiErrorModel) async {
          //     emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
          //   },
          // );
        },
        disposeSearch: () {
          // emit(
          //   OrdersState.loaded(
          //     orders: _allOrders ?? [],
          //     hasMore: _meta?.hasNextPage ?? false,
          //     isSearching: _isSearching,
          //   ),
          // );
        },
        priceChanged: (price) async {
          await state.mapOrNull(
            loaded: (state) {
              emit(
                state.copyWith(
                  customersRes: state.customersRes.copyWith(
                    productDailyPrices: state.customersRes.productDailyPrices
                        ?.map((p) {
                          if (p.productId == price.productId) {
                            return price;
                          }
                          return p;
                        })
                        .toList(),
                  ),
                  selectedDate: state.selectedDate,
                ),
              );
            },
          );
        },
        updateCustomerDailyReport: (customerDailyReport) {
          state.mapOrNull(
            loaded: (state) {
              emit(
                state.copyWith(
                  customersRes: state.customersRes.copyWith(
                    customerDailyReports: state
                        .customersRes
                        .customerDailyReports
                        ?.map((p) {
                          if (p.id == customerDailyReport.id) {
                            return customerDailyReport;
                          }
                          return p;
                        })
                        .toList(),
                  ),
                  selectedDate: state.selectedDate,
                ),
              );
            },
          );
        },
      );
    });
  }

  @override
  CustomersState? fromJson(Map<String, dynamic> json) {
    try {
      final stateType = json['type'] as String?;
      switch (stateType) {
        case 'initial':
          return const CustomersState.initial();
        case 'loading':
          return const CustomersState.loading();
        case 'loaded':
          final customersJson = json['customersRes'] as List<dynamic>? ?? [];
          final customers = customersJson
              .where((e) => e != null)
              .map(
                (e) => CustomerDailyReportModel.fromJson(
                  e as Map<String, dynamic>,
                ).toEntity(),
              )
              .toList();
          return CustomersState.loaded(
            customersRes: CustomersResEntity(customerDailyReports: customers),
            selectedDate: DateTime.parse(json['selectedDate'] as String),
          );
        case 'failure':
          final errorJson = json['error'] as Map<String, dynamic>? ?? {};
          final apiError = ApiErrorModel.fromJson(errorJson);
          return CustomersState.failure(apiErrorModel: apiError);
        default:
          return const CustomersState.initial();
      }
    } catch (e) {
      return const CustomersState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(CustomersState state) {
    return state.when(
      initial: () => {'type': 'initial'},
      loading: () => {'type': 'loading'},
      loaded: (selectedDate, customersRes) => {
        'type': 'loaded',
        'selectedDate': selectedDate.toIso8601String(),
        'customersRes':
            customersRes.customerDailyReports
                ?.map((e) => e.toJson())
                .toList() ??
            [],
      },
      failure: (apiErrorModel) => {
        'type': 'failure',
        'error': apiErrorModel.toJson(),
      },
    );
  }

  void emitFaliure({
    required Emitter<CustomersState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(CustomersState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<CustomersState> emit,
    required CustomersResEntity customersRes,
    required DateTime selectedDate,
  }) => emit(
    CustomersState.loaded(
      customersRes: customersRes,
      selectedDate: selectedDate,
    ),
  );
}
