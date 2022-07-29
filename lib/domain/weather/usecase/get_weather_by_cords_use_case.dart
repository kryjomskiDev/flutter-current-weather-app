import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';

@injectable
class GetWeatherByCordsUseCase {
  final WeatherService _weatherService;
  GetWeatherByCordsUseCase(this._weatherService);

  Future<Weather> call(double lat, double lon) => _weatherService.getWeatherByCords(lat, lon);
}
