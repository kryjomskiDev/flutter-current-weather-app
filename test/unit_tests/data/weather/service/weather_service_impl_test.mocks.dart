// Mocks generated by Mockito 5.0.17 from annotations
// in wheather_app/test/unit_tests/data/weather/service/weather_service_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:wheather_app/data/api_url_provider.dart' as _i7;
import 'package:wheather_app/data/weather/data_source/weather_api_data_source.dart'
    as _i4;
import 'package:wheather_app/data/weather/mapper/weather_dto_to_weather_mapper.dart'
    as _i6;
import 'package:wheather_app/data/weather/model/weather_dto.dart' as _i2;
import 'package:wheather_app/domain/weather/model/weather.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeWeatherDto_0 extends _i1.Fake implements _i2.WeatherDto {}

class _FakeWeather_1 extends _i1.Fake implements _i3.Weather {}

/// A class which mocks [WeatherApiDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherApiDataSource extends _i1.Mock
    implements _i4.WeatherApiDataSource {
  MockWeatherApiDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.WeatherDto> getWeatherByCords(
          double? latitude, double? longitude, String? apiKey, String? lang) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getWeatherByCords, [latitude, longitude, apiKey, lang]),
              returnValue: Future<_i2.WeatherDto>.value(_FakeWeatherDto_0()))
          as _i5.Future<_i2.WeatherDto>);
  @override
  _i5.Future<_i2.WeatherDto> getWeatherByCityName(
          String? cityName, String? apiKey, String? lang) =>
      (super.noSuchMethod(
          Invocation.method(#getWeatherByCityName, [cityName, apiKey, lang]),
          returnValue:
              Future<_i2.WeatherDto>.value(_FakeWeatherDto_0())) as _i5
          .Future<_i2.WeatherDto>);
}

/// A class which mocks [WeatherDtoToWeatherMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherDtoToWeatherMapper extends _i1.Mock
    implements _i6.WeatherDtoToWeatherMapper {
  MockWeatherDtoToWeatherMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Weather call({_i2.WeatherDto? dto}) =>
      (super.noSuchMethod(Invocation.method(#call, [], {#dto: dto}),
          returnValue: _FakeWeather_1()) as _i3.Weather);
}

/// A class which mocks [ApiUrlProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiUrlProvider extends _i1.Mock implements _i7.ApiUrlProvider {
  MockApiUrlProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String getApiUrl() =>
      (super.noSuchMethod(Invocation.method(#getApiUrl, []), returnValue: '')
          as String);
  @override
  String apiKey() =>
      (super.noSuchMethod(Invocation.method(#apiKey, []), returnValue: '')
          as String);
}