import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/create_customer_req_entity.dart';

part 'create_customer_req_model.freezed.dart';
part 'create_customer_req_model.g.dart';

@freezed
abstract class CreateCustomerModel with _$CreateCustomerModel {
  const factory CreateCustomerModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'number') int? number,
  }) = _CreateCustomerModel;
  factory CreateCustomerModel.fromJson(Map<String, Object?> json) =>
      _$CreateCustomerModelFromJson(json);
  factory CreateCustomerModel.fromEntity({
    required CreateCustomerReqEntity entity,
  }) {
    return CreateCustomerModel(
      name: entity.name?.value,
      number: int.tryParse(entity.number?.value ?? ''),
    );
  }
}
