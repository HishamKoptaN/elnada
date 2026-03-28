import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployment_event.freezed.dart';

@freezed
class DeploymentEvent with _$DeploymentEvent {
  const factory DeploymentEvent.started() = DeploymentEventStarted;
}
