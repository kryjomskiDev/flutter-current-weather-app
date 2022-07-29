import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';

@injectable
class GetWeatherByCityNameUseCase {
  final WeatherService _weatherService;
  GetWeatherByCityNameUseCase(this._weatherService);

  Future<Weather> call(String cityName) => _weatherService.getWeatherByCityName(cityName);
}
