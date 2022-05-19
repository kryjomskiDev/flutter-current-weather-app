import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/data/weather/mapper/weather_dto_to_weather_mapper.dart';
import 'package:wheather_app/data/weather/mapper/weather_icon_mapper.dart';
import 'package:wheather_app/data/weather/model/weather_details_dto.dart';
import 'package:wheather_app/data/weather/model/weather_dto.dart';
import 'package:wheather_app/data/weather/model/weather_temperature_dto.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';

import 'weather_dto_to_weather_mapper_test.mocks.dart';

@GenerateMocks([WeatherIconMapper])
void main() {
  late WeatherDtoToWeatherMapper _weatherDtoToWeatherMapper;
  late WeatherIconMapper _weatherIconMapper;
  setUp(() {
    _weatherIconMapper = MockWeatherIconMapper();
    _weatherDtoToWeatherMapper = WeatherDtoToWeatherMapper(_weatherIconMapper);
  });

  test("Mapps WeatherDto to Weather successfully", () {
    const WeatherDetailsDto weatherDetailsDto = WeatherDetailsDto(
      description: "description",
      icon: "icon",
      main: "main",
    );

    const WeatherTemperatureDto weatherTemperatureDto = WeatherTemperatureDto(temp: 20.0);

    const WeatherDto weatherDto = WeatherDto(
      main: weatherTemperatureDto,
      name: "name",
      weather: [weatherDetailsDto],
    );

    const Weather expectedWeather = Weather(
      descritpion: "description",
      icon: "icon",
      temperature: 20.0,
      locationName: "name",
      title: "main",
    );

    when(_weatherIconMapper.call(weatherDto.weather.first.icon)).thenReturn("icon");

    final actualWeather = _weatherDtoToWeatherMapper(dto: weatherDto);

    expect(actualWeather, equals(expectedWeather));
  });
}
