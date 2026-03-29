import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/core/utils/github_outputs.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';

/// Handles build-only operations
class BuildRunner {
  final BuildBloc _buildBloc = getIt<BuildBloc>();

  Future<void> run() async {
    try {
      await for (final state in _buildBloc.stream) {
        final shouldContinue = await _handleState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _buildBloc.close();
    }
  }

  Future<bool> _handleState(BuildState state) async {
    return state.map(
      initial: (_) => true,
      building: (s) {
        print('📦 بناء ${s.platform}...');
        return true;
      },
      success: (s) {
        print('✅ تم بناء ${s.platform}: ${s.outputPath}');
        GithubOutputs.set('apk_path', s.outputPath);
        return false;
      },
      failure: (s) {
        print('❌ فشل بناء ${s.platform}: ${s.error}');
        print('::error::build_${s.platform}: ${s.error}');
        throw Exception('Build failed: ${s.error}');
      },
    );
  }
}
