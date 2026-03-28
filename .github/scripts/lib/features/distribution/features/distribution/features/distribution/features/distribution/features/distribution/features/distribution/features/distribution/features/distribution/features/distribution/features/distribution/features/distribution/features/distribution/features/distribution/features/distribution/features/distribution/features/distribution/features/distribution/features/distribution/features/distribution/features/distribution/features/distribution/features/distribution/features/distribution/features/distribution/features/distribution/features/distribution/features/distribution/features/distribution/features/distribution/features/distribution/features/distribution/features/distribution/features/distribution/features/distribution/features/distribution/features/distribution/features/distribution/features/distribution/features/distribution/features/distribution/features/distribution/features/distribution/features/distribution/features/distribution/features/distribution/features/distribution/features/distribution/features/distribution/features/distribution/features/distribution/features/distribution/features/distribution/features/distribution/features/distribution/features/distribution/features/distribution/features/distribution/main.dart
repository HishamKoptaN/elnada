import 'dart:async';
import 'dart:io';
import 'core/dependency_injection.dart';
import 'presentation/bloc/deployment_bloc.dart';
import 'presentation/bloc/deployment_event.dart';
import 'presentation/bloc/deployment_state.dart';

Future<void> main() async {
  DependencyInjection.init();

  final bloc = DependencyInjection.deploymentBloc;
  final completer = Completer<void>();

  bloc.state.listen((state) {
    state.when(
      initial: () {},
      loading: () {},
      patchSuccess: () {
        print('::set-output name=is_new_release::false');
        if (!completer.isCompleted) completer.complete();
      },
      releaseSuccess: (version) {
        print('::set-output name=is_new_release::true');
        print('::set-output name=version::$version');
        if (!completer.isCompleted) completer.complete();
      },
      failure: (error) {
        print('::error::$error');
        exit(1);
      },
    );
  });

  bloc.add(const DeploymentEvent.started());

  await completer.future;
  bloc.dispose();
}
