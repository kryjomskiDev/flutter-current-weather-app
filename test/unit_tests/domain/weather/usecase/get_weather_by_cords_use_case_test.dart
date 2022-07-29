import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/service/weather_service.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_cords_use_case.dart';

import 'get_weather_by_cords_use_case_test.mocks.dart';

@GenerateMocks([WeatherService])
void main() {
  late WeatherService _weatherService;
  late GetWeatherByCordsUseCase _getWeatherByCordsUseCase;

  setUp(() {
    _weatherService = MockWeatherService();
    _getWeatherByCordsUseCase = GetWeatherByCordsUseCase(_weatherService);
  });

  test("getting Weather by cords successfully", () async {
    const lat = 20.0;
    const lon = 30.0;

    const weather = Weather(
      title: '',
      descritpion: '',
      temperature: 0.0,
      icon: '',
      locationName: '',
    );

    when(_weatherService.getWeatherByCords(lat, lon)).thenAnswer((_) => Future.value(weather));

    expect(await _getWeatherByCordsUseCase(lat, lon), weather);
  });
}
