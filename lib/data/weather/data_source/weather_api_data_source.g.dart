// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherApiDataSource implements WeatherApiDataSource {
  _WeatherApiDataSource(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<WeatherDto> getWeatherByCords(
      latitude, longitude, apiKey, lang) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        WeatherDto>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'weather?lat=${latitude}&lon=${longitude}&units=metric&appid=${apiKey}&lang=${lang}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WeatherDto> getWeatherByCityName(cityName, apiKey, lang) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        WeatherDto>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'weather?q=${cityName}&units=metric&appid=${apiKey}&lang=${lang}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
