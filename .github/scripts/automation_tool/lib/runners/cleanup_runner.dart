import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/core/utils/github_outputs.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';

/// Handles cleanup-only operations
class CleanupRunner {
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();

  Future<void> run() async {
    try {
      await for (final state in _cleanupBloc.stream) {
        final shouldContinue = await _handleState(state);
        if (!shouldContinue) break;
      }
    } finally {
      _cleanupBloc.close();
    }
  }

  Future<bool> _handleState(CleanupState state) async {
    return state.map(
      initial: (_) => true,
      loading: (_) {
        print('🧹 تنظيف Firebase...');
        return true;
      },
      success: (s) {
        print('✅ تم حذف ${s.deleted} إصدار - ${s.remaining} متبقي');
        GithubOutputs.setMultiple({
          'deleted_count': s.deleted.toString(),
          'remaining_count': s.remaining.toString(),
        });
        return false;
      },
      failure: (s) {
        print('❌ فشل التنظيف: ${s.error}');
        print('::error::cleanup: ${s.error}');
        throw Exception('Cleanup failed: ${s.error}');
      },
    );
  }
}

typedef CleanupBloc = FirebaseCleanupBloc;
