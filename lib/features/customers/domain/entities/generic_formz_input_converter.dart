import 'package:form_inputs/form_inputs.dart';
import 'package:json_annotation/json_annotation.dart';

class GenericFormzInputConverter<T>
    implements JsonConverter<GenericFormzInput<T>?, T?> {
  const GenericFormzInputConverter();

  @override
  GenericFormzInput<T>? fromJson(T? json) {
    if (json == null) return null;
    return GenericFormzInput.dirty(json);
  }

  @override
  T? toJson(GenericFormzInput<T>? object) {
    return object?.value;
  }
}
