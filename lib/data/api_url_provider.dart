import 'package:injectable/injectable.dart';

@singleton
class ApiUrlProvider {
  String getApiUrl() => 'https://api.openweathermap.org/data/2.5/';
}
