import 'package:injectable/injectable.dart';
import 'package:wheather_app/data/weather/mapper/weather_icon_mapper.dart';
import 'package:wheather_app/data/weather/model/weather_dto.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';

@injectable
class WeatherDtoToWeatherMapper {
  final WeatherIconMapper _weatherIconMapper;
  const WeatherDtoToWeatherMapper(this._weatherIconMapper);

  Weather call({required WeatherDto dto}) => Weather(
        title: dto.weather.first.main,
        descritpion: dto.weather.first.description,
        icon: _weatherIconMapper(dto.weather.first.icon),
        temperature: dto.main.temp,
        locationName: dto.name,
      );
}
