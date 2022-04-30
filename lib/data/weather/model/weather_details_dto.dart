import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_details_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherDetailsDto extends Equatable {
  final String description;
  final String icon;
  final String main;

  const WeatherDetailsDto({
    required this.description,
    required this.icon,
    required this.main,
  });

  factory WeatherDetailsDto.fromJson(Map<String, dynamic> json) => _$WeatherDetailsDtoFromJson(json);

  @override
  List<Object?> get props => [
        description,
        icon,
        main,
      ];
}
