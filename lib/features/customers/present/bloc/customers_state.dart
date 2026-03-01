part of 'customers_bloc.dart';

@freezed
abstract class CustomersState with _$CustomersState {
  const factory CustomersState.initial() = _Initial;
  const factory CustomersState.loading() = _Loading;
  const factory CustomersState.loaded({
    required DateTime selectedDate,
    required CustomersResEntity customersRes,
  }) = _Loaded;
  const factory CustomersState.failure({required ApiErrorModel apiErrorModel}) =
      _Failure;
}
