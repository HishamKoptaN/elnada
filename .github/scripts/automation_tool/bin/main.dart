import 'dart:io';
import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/core/config.dart';
import 'package:abujena_automation/runners/deployment_runner.dart';
import 'package:abujena_automation/runners/build_runner.dart';
import 'package:abujena_automation/runners/cleanup_runner.dart';

/// Entry point for automation tool
void main(List<String> arguments) async {
  configureDependencies();
  final command = arguments.isNotEmpty ? arguments.first : 'deploy';

  try {
    await _executeCommand(command);
  } catch (e, stackTrace) {
    _handleError(e, stackTrace);
  }
}

Future<void> _executeCommand(String command) async {
  switch (command) {
    case 'deploy':
      await DeploymentRunner().run();
      break;
    case 'build':
      await BuildRunner().run();
      break;
    case 'cleanup':
      await CleanupRunner().run();
      break;
    default:
      print('Unknown command: $command');
      exit(1);
  }
}

void _handleError(Object e, StackTrace stackTrace) {
  print('Error: $e');
  print(stackTrace);
  exit(1);
}
