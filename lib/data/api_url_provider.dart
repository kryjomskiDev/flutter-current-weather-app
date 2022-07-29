import 'package:injectable/injectable.dart';

@singleton
class ApiUrlProvider {
  String getApiUrl() => 'https://api.openweathermap.org/data/2.5/';
  String apiKey() => '6952e3f3da15fbb4919ae12ef633fce9';
}
