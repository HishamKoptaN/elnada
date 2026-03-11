import '../env.dart';

class ProdEnv implements Env {
  @override
  String get baseUrl =>
      'https://hotpink-gnu-383634.hostingersite.com/abujena-dawajen-api/api/';
  @override
  String get envName => 'prod';
}
