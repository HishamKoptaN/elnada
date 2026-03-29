import 'package:abujena_automation/injection.dart';
import 'package:abujena_automation/features/build_engine/build_bloc.dart';
import 'package:abujena_automation/features/shorebird/present/bloc/shorebird_bloc.dart';
import 'package:abujena_automation/features/firebase/present/bloc/firebase_cleanup_bloc.dart';

/// Sets up logging for deployment process
class DeploymentLogger {
  final BuildBloc _buildBloc = getIt<BuildBloc>();
  final ShorebirdBloc _shorebirdBloc = getIt<ShorebirdBloc>();
  final CleanupBloc _cleanupBloc = getIt<FirebaseCleanupBloc>();

  void setup() {
    _setupBuildLogging();
    _setupShorebirdLogging();
    _setupCleanupLogging();
  }

  void _setupBuildLogging() {
    _buildBloc.stream.listen((state) {
      state.whenOrNull(
        building: (p) => print('   📦 بناء $p...'),
        success: (p, path) => print('   ✅ $path'),
        failure: (p, e) => print('   ❌ فشل $p: $e'),
      );
    });
  }

  void _setupShorebirdLogging() {
    _shorebirdBloc.stream.listen((state) {
      state.whenOrNull(
        checkingVersion: () => print('   🔍 فحص إصدارات Shorebird...'),
        patchReady: () => print('   🩹 جاهز للباتش'),
        releaseReady: () => print('   🚀 جاهز للإصدار الجديد'),
        deployingPatch: () => print('   📤 نشر الباتش...'),
        patchSuccess: () => print('   ✅ تم نشر الباتش'),
        deployingRelease: () => print('   📤 نشر الإصدار...'),
        releaseSuccess: (v) => print('   ✅ تم نشر ${v.cleanVersion}'),
        failure: (e) => print('   ❌ فشل: $e'),
      );
    });
  }

  void _setupCleanupLogging() {
    _cleanupBloc.stream.listen((state) {
      state.whenOrNull(
        loading: () => print('   🧹 جاري التنظيف...'),
        success: (d, r) => print('   ✅ تم حذف $d - $r متبقي'),
        failure: (e) => print('   ❌ فشل التنظيف: $e'),
      );
    });
  }
}

typedef CleanupBloc = FirebaseCleanupBloc;
