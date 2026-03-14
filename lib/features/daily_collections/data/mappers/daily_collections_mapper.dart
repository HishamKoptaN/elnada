import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/daily_collection_entity.dart';
import '../models/collection_model.dart';
import '../models/create_daily_collection_req_model.dart';
import '../models/update_daily_collection_req_model.dart';
import '../../domain/entities/update_daily_collaction_req_entity.dart';
import '../../domain/entities/create_daily_collaction_req_entity.dart';

extension CollectionMapper on CollectionModel {
  DailyCollectionEntity toEntity() {
    return DailyCollectionEntity(
      id: id ?? 0,
      amount: amount.toString(),
      createdAt: formatDate(dateTime: createdAt),
    );
  }
}

extension CollectionEntityToJson on DailyCollectionEntity {
  Map<String, dynamic> toJson() {
    return {'id': id, 'amount': amount};
  }
}

extension CreateDailyCollectionReqEntityMapper
    on CreateDailyCollectionReqEntity {
  CreateDailyCollectionReqModel toModel() {
    return CreateDailyCollectionReqModel(
      customerId: customerId.value ?? 0,
      amount: int.parse(amount.value ?? "0"),
      date: date,
    );
  }
}

extension UpdateDailyCollectionReqEntityMapper
    on UpdateDailyCollectionReqEntity {
  UpdateDailyCollectionReqModel toModel() {
    return UpdateDailyCollectionReqModel(
      customerId: customerId.value ?? 0,
      amount: int.parse(amount.value ?? "0"),
      date: date.value ?? "",
    );
  }
}
