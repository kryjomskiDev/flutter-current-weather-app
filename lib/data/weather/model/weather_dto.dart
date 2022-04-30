import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wheather_app/data/weather/model/weather_temperature_dto.dart';
import 'package:wheather_app/data/weather/model/weather_details_dto.dart';

part 'weather_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherDto extends Equatable {
  final String name;
  final List<WeatherDetailsDto> weather;
  final WeatherTemperatureDto main;

  const WeatherDto({
    required this.name,
    required this.weather,
    required this.main,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

  @override
  List<Object?> get props => [
        name,
        weather,
        main,
      ];
}
