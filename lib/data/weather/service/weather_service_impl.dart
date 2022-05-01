import 'package:wheather_app/data/weather/data_source/weather_api_data_source.dart';
import 'package:wheather_app/data/weather/mapper/weather_dto_to_weather_mapper.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WeatherService)
class WeatherServiceImpl implements WeatherService {
  final WeatherApiDataSource _weatherApiDataSource;
  final WeatherDtoToWeatherMapper _dtoToWeatherMapper;

  WeatherServiceImpl(this._weatherApiDataSource, this._dtoToWeatherMapper);

  @override
  Future<Weather> getWeatherByCords(double lat, double lon) async => _dtoToWeatherMapper(
        dto: await _weatherApiDataSource.getWeatherByCords(
          lat,
          lon,
          '6952e3f3da15fbb4919ae12ef633fce9',
        ),
      );
}
