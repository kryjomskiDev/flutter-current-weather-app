import 'package:wheather_app/data/weather/data_source/weather_api_data_source.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WeatherService)
class WeatherServiceImpl implements WeatherService {
  final WeatherApiDataSource _weatherApiDataSource;

  WeatherServiceImpl(this._weatherApiDataSource);

  @override
  Future<Weather> getWeatherByCords(double lat, double lon) {
    // TODO: implement getWeatherByCords
    throw UnimplementedError();
  }
}
