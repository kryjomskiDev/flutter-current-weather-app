import 'package:flutter_test/flutter_test.dart';
import 'package:wheather_app/data/weather/mapper/weather_icon_mapper.dart';

void main() {
  late WeatherIconMapper _weatherIconMapper;

  setUp(() {
    _weatherIconMapper = WeatherIconMapper();
  });

  test("Maps icon path", () {
    const String icon = "Icon";
    const String expectedResult = 'http://openweathermap.org/img/wn/$icon@2x.png';

    final String actualResult = _weatherIconMapper(icon);

    expect(actualResult, equals(expectedResult));
  });
}
