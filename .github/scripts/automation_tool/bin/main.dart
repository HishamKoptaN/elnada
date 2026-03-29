import 'dart:io';
import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/runners/deployment_runner.dart';

/// Entry point for automation tool
void main(List<String> arguments) async {
  configureDependencies();

  try {
    print('🚀 Starting deployment...');
    await DeploymentRunner().run();
    print('✅ Deployment completed successfully!');
    exit(0);
  } catch (e, stackTrace) {
    print('❌ Error: $e');
    print(stackTrace);
    exit(1);
  }
}
