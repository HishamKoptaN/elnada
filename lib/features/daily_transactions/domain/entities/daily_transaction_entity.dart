import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../customers/data/models/customer_daily_reports_res_model.dart';
part 'daily_transaction_entity.freezed.dart';
part 'daily_transaction_entity.g.dart';

@freezed
abstract class DailyTransactionEntity with _$DailyTransactionEntity {
  const factory DailyTransactionEntity({
    int? id,
    String? totalAmount,
    List<TransactionDetailEntity>? details,
    String? createdAt,
  }) = _DailyTransactionEntity;
  factory DailyTransactionEntity.fromJson(Map<String, Object?> json) =>
      _$DailyTransactionEntityFromJson(json);
}

@freezed
abstract class TransactionDetailEntity with _$TransactionDetailEntity {
  const factory TransactionDetailEntity({
    int? id,
    ProductModel? product,
    String? weight,
    String? cage,
    String? priceAtTime,
    String? discount,
    String? total,
  }) = _TransactionDetailEntity;
  factory TransactionDetailEntity.fromJson(Map<String, Object?> json) =>
      _$TransactionDetailEntityFromJson(json);
}
