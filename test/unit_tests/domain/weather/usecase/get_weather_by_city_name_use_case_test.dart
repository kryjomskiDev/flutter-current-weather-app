import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_city_name_use_case.dart';

import 'get_weather_by_city_name_use_case_test.mocks.dart';

@GenerateMocks([WeatherService])
void main() {
  late WeatherService _weatherService;
  late GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;

  setUp(() {
    _weatherService = MockWeatherService();
    _getWeatherByCityNameUseCase = GetWeatherByCityNameUseCase(_weatherService);
  });

  test("getting Weather by city name successfully", () async {
    const cityName = 'New York';
    const weather = Weather(
      title: '',
      descritpion: '',
      temperature: 1.0,
      icon: '',
      locationName: 'New York',
    );

    when(_weatherService.getWeatherByCityName(cityName)).thenAnswer((_) => Future.value(weather));

    expect(await _getWeatherByCityNameUseCase(cityName), weather);
  });
}
