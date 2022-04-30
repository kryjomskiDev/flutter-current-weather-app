import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wheather_app/data/weather/model/weather_dto.dart';
import 'package:wheather_app/networking_config/networking_endpoints.dart';

part 'weather_api_data_source.g.dart';

@injectable
@RestApi()
abstract class WeatherApiDataSource {
  @factoryMethod
  factory WeatherApiDataSource(Dio dio) = _WeatherApiDataSource;

  @GET(NetworkingEndpoints.getWeatherByCords)
  Future<WeatherDto> getWeatherByCords(
    @Path('lat') double latitude,
    @Path('lon') double longitude,
    @Path('api_key') String apiKey,
  );
}
