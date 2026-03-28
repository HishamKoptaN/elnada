import 'package:freezed_annotation/freezed_annotation.dart';

part 'deploy_event.freezed.dart';

/// Events for Deployment orchestrator BLoC
@freezed
class DeployEvent with _$DeployEvent {
  const factory DeployEvent.startDeployment() = DeployEventStartDeployment;
  const factory DeployEvent.startCleanup() = DeployEventStartCleanup;
  const factory DeployEvent.startBuild() = DeployEventStartBuild;
}
