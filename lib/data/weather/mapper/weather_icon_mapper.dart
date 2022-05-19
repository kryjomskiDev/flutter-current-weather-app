import 'package:injectable/injectable.dart';

@injectable
class WeatherIconMapper {
  String call(String iconPath) => 'http://openweathermap.org/img/wn/$iconPath@2x.png';
}
