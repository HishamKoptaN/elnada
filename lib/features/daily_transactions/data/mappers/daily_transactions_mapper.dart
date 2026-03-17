import '../../../../core/utils/date_formatter.dart';
import '../models/create_daily_transaction_req_model.dart';
import '../models/update_daily_transaction_req_model.dart';
import '../models/transaction_model.dart';
import '../../domain/entities/update_daily_transaction_req_entity.dart';
import '../../domain/entities/create_daily_transaction_req_entity.dart';
import '../../domain/entities/daily_transaction_entity.dart';

extension CreateDailyTransactionReqEntityMapper
    on CreateDailyTransactionReqEntity {
  CreateDailyTransactionReqModel toModel() {
    return CreateDailyTransactionReqModel(
      productId: productId?.value ?? 0,
      customerId: customerId?.value ?? 0,
      weight: double.tryParse(weight?.value ?? '0') ?? 0.0,
      cage: int.tryParse(cage?.value ?? '0') ?? 0,
      discount: int.tryParse(discount?.value ?? '0') ?? 0,
      date: date,
    );
  }
}

extension UpdateDailyTransactionReqEntityMapper
    on UpdateDailyTransactionReqEntity {
  UpdateDailyTransactionReqModel toModel() {
    return UpdateDailyTransactionReqModel(
      customerId: customerId.value ?? 0,
      weight: double.tryParse(weight.value ?? '0') ?? 0.0,
      cage: int.tryParse(cage.value ?? '0') ?? 0,
      discount: double.tryParse(discount.value ?? '0') ?? 0.0,
      date: date,
    );
  }
}

extension DailyTransactionModelMapper on DailyTransactionModel {
  DailyTransactionEntity toEntity() {
    return DailyTransactionEntity(
      id: id,
      totalAmount: totalAmount?.toString(),
      details: details?.map((e) => e.toEntity()).toList(),
      createdAt: formatDate(
        dateTime: createdAt,
        newPattern: 'dd/MM/yyyy hh:mm a',
      ),
    );
  }
}

extension TransactionDetailModelMapper on TransactionDetailModel {
  TransactionDetailEntity toEntity() {
    return TransactionDetailEntity(
      id: id,
      product: product,
      weight: weight?.toString(),
      priceAtTime: priceAtTime?.toString(),
      discount: discount?.toString(),
      total: total?.toString(),
    );
  }
}
