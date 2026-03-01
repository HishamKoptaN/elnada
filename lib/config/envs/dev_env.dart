
import '../env.dart';
class DevEnv extends Env {
  @override
  String get baseUrl =>
      'https://hotpink-gnu-383634.hostingersite.com/taha-api/api/';
  @override
  String get envName => 'dev';
}
