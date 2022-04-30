import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_temperature_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherTemperatureDto extends Equatable {
  final double temp;
  final double feelsLike;

  const WeatherTemperatureDto({
    required this.temp,
    required this.feelsLike,
  });

  factory WeatherTemperatureDto.fromJson(Map<String, dynamic> json) => _$WeatherTemperatureDtoFromJson(json);

  @override
  List<Object?> get props => [
        temp,
        feelsLike,
      ];
}
