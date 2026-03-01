import '../env.dart';

class ProdEnv implements Env {
  @override
  String get baseUrl => 'https://api.example.com';
  @override
  String get envName => 'prod';
}
