part of 'deploy_bloc.dart';
@freezed
class DeployEvent with _$DeployEvent {
  const factory DeployEvent.startDeployment() = DeployEventStartDeployment;
  const factory DeployEvent.startCleanup() = DeployEventStartCleanup;
  const factory DeployEvent.startBuild() = DeployEventStartBuild;
}
