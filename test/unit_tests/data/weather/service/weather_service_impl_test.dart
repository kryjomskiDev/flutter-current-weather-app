import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/data/api_url_provider.dart';
import 'package:wheather_app/data/weather/data_source/weather_api_data_source.dart';
import 'package:wheather_app/data/weather/mapper/weather_dto_to_weather_mapper.dart';
import 'package:wheather_app/data/weather/model/weather_details_dto.dart';
import 'package:wheather_app/data/weather/model/weather_dto.dart';
import 'package:wheather_app/data/weather/model/weather_temperature_dto.dart';
import 'package:wheather_app/data/weather/service/weather_service_impl.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';

import 'weather_service_impl_test.mocks.dart';

@GenerateMocks([
  WeatherApiDataSource,
  WeatherDtoToWeatherMapper,
  ApiUrlProvider,
])
void main() {
  late WeatherApiDataSource _weatherApiDataSource;
  late ApiUrlProvider _apiUrlProvider;
  late WeatherDtoToWeatherMapper _weatherDtoToWeatherMapper;
  late WeatherService _weatherService;

  group("Weather service", () {
    setUp(() {
      _weatherApiDataSource = MockWeatherApiDataSource();
      _apiUrlProvider = MockApiUrlProvider();
      _weatherDtoToWeatherMapper = MockWeatherDtoToWeatherMapper();

      _weatherService = WeatherServiceImpl(
        _weatherApiDataSource,
        _weatherDtoToWeatherMapper,
        _apiUrlProvider,
      );
    });

    test("Get weather by city name.", () async {
      const String cityName = "cityName";
      final String lang = Platform.localeName.substring(0, 2);

      const WeatherDetailsDto weatherDetailsDto =
          WeatherDetailsDto(description: "description", icon: "icon", main: "main");

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
        locationName: "main",
        title: "name",
      );

      const Weather expectedAnswer = expectedWeather;

      when(_apiUrlProvider.getApiUrl()).thenAnswer((_) => "apiUrl");
      when(_apiUrlProvider.apiKey()).thenAnswer((_) => "6952e3f3da15fbb4919ae12ef633fce9");

      when(_weatherApiDataSource.getWeatherByCityName(
        cityName,
        _apiUrlProvider.apiKey(),
        lang,
      )).thenAnswer((_) => Future.value(weatherDto));

      when(_weatherDtoToWeatherMapper(dto: weatherDto)).thenAnswer((_) => expectedWeather);

      final actualAnswer = await _weatherService.getWeatherByCityName(cityName);

      expect(actualAnswer, expectedAnswer);
    });
  });
}
