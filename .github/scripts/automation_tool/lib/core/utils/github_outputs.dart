import 'dart:io';

/// GitHub Actions output helper
class GithubOutputs {
  static void set(String name, String value) {
    final githubOutput = Platform.environment['GITHUB_OUTPUT'];
    if (githubOutput != null && githubOutput.isNotEmpty) {
      File(githubOutput).writeAsStringSync(
        '$name=$value\n',
        mode: FileMode.append,
      );
    }
    print('::set-output name=$name::$value');
  }

  static void setMultiple(Map<String, String> outputs) {
    outputs.forEach(set);
  }
}
