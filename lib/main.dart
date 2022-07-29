import 'package:injectable/injectable.dart';
import 'package:wheather_app/mobile_app.dart';

const String _environmentDefineKey = 'ENVIRONMENT';
const String _prodEnvironmentName = 'production';
void main() => runMobileApp(_getEnvironment());

String _getEnvironment() {
  const baseEnvironment = String.fromEnvironment(_environmentDefineKey, defaultValue: Environment.prod);

  return baseEnvironment == _prodEnvironmentName ? Environment.prod : baseEnvironment;
}
