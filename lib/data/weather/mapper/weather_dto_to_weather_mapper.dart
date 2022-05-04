import 'package:injectable/injectable.dart';
import 'package:wheather_app/data/weather/model/weather_dto.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';

@injectable
class WeatherDtoToWeatherMapper {
  Weather call({required WeatherDto dto}) => Weather(
        title: dto.weather.first.main,
        descritpion: dto.weather.first.description,
        icon: _mapIconPath(dto.weather.first.icon),
        temperature: dto.main.temp,
        locationName: dto.name,
      );

  String _mapIconPath(String dtoIconPath) => 'http://openweathermap.org/img/wn/$dtoIconPath@2x.png';
}
