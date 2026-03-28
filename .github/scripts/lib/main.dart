import 'dart:io';

// Import feature main functions
import 'features/build/main.dart' as build_feature;
import 'features/cleanup/main.dart' as cleanup_feature;
import 'features/distribution/main.dart' as distribution_feature;

/// Unified entry point for all deployment features
///
/// Usage: dart lib/main.dart [feature]
///
/// Available features:
/// - build: Build Android/Windows apps
/// - cleanup: Clean old Firebase releases
/// - distribution: Distribute via Shorebird/Firebase/GitHub (default)
///
/// Or set FEATURE environment variable
void main(List<String> args) async {
  final feature = _getFeature(args);

  print('🚀 Running feature: $feature');
  print('─' * 40);

  try {
    switch (feature) {
      case 'build':
        await build_feature.main();
        break;
      case 'cleanup':
        await cleanup_feature.main();
        break;
      case 'distribution':
        await distribution_feature.main();
        break;
      default:
        _printUsage();
        exit(1);
    }

    print('─' * 40);
    print('✅ Feature completed successfully');
  } catch (e) {
    print('─' * 40);
    print('❌ Feature failed: $e');
    exit(1);
  }
}

String _getFeature(List<String> args) {
  // Priority: 1) command args, 2) FEATURE env var, 3) default (distribution)
  if (args.isNotEmpty) {
    return args[0].toLowerCase();
  }

  final envFeature = Platform.environment['FEATURE']?.toLowerCase();
  if (envFeature != null && envFeature.isNotEmpty) {
    return envFeature;
  }

  return 'distribution'; // default
}

void _printUsage() {
  print('''
❌ Unknown feature

Usage: dart lib/main.dart [feature]

Available features:
  • build        - Build Android/Windows apps
  • cleanup      - Clean old Firebase releases  
  • distribution - Distribute via Shorebird/Firebase/GitHub (default)

Or set FEATURE environment variable:
  FEATURE=cleanup dart lib/main.dart
''');
}
