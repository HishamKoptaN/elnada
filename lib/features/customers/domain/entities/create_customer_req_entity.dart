import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_customer_req_entity.freezed.dart';

@freezed
abstract class CreateCustomerReqEntity with _$CreateCustomerReqEntity {
  const CreateCustomerReqEntity._();
  const factory CreateCustomerReqEntity({
    GenericFormzInput<String>? name,
    GenericFormzInput<String>? number,
    @JsonKey(includeIfNull: false) FormzSubmissionStatus? formzSubmissionStatus,
  }) = _CreateCustomerReqEntity;
  GenericFormzInput<String> get nameInput =>
      name ?? const GenericFormzInput.pure();
  GenericFormzInput<String> get numberInput =>
      number ?? const GenericFormzInput.pure();
  FormzSubmissionStatus get status {
    if (formzSubmissionStatus != null &&
        formzSubmissionStatus != FormzSubmissionStatus.initial) {
      return formzSubmissionStatus!;
    }
    final isValid = Formz.validate([nameInput, numberInput]);
    return isValid
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }

  bool get isValid => status == FormzSubmissionStatus.success;
}
