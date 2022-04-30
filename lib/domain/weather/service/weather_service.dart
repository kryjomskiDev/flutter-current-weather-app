import 'package:wheather_app/domain/weather/model/weather.dart';

abstract class WeatherService {
  Future<Weather> getWeatherByCords(double lat, double lon);
}
