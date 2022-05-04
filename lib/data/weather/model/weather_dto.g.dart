// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => WeatherDto(
      name: json['name'] as String,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      main:
          WeatherTemperatureDto.fromJson(json['main'] as Map<String, dynamic>),
    );
