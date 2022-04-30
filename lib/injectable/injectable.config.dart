// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_url_provider.dart' as _i3;
import '../data/permissions/permissions_service_impl.dart' as _i6;
import '../data/weather/data_source/weather_api_data_source.dart' as _i8;
import '../data/weather/mapper/weather_dto_to_weather_mapper.dart' as _i9;
import '../data/weather/service/weather_service_impl.dart' as _i11;
import '../domain/permissions/service/permissions_service.dart' as _i5;
import '../domain/permissions/usecase/is_location_permissions_granted_use_case.dart'
    as _i12;
import '../domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart'
    as _i13;
import '../domain/permissions/usecase/open_settings_use_case.dart' as _i14;
import '../domain/permissions/usecase/request_location_permissions_use_case.dart'
    as _i7;
import '../domain/weather/service/weather_service.dart' as _i10;
import '../presentation/pages/location/cubit/location_page_cubit.dart' as _i15;
import 'dio/dio_injectable.dart' as _i16;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.singleton<_i3.ApiUrlProvider>(_i3.ApiUrlProvider());
  gh.lazySingleton<_i4.Dio>(() => dioModule.dio(get<_i3.ApiUrlProvider>()),
      registerFor: {_dev, _prod});
  gh.singleton<_i4.Dio>(dioModule.testDio(), registerFor: {_test});
  gh.lazySingleton<_i5.PermissionsService>(() => _i6.PermissionsServiceImpl());
  gh.factory<_i7.RequestLocationPermissionsUseCase>(() =>
      _i7.RequestLocationPermissionsUseCase(get<_i5.PermissionsService>()));
  gh.factory<_i8.WeatherApiDataSource>(
      () => _i8.WeatherApiDataSource(get<_i4.Dio>()));
  gh.factory<_i9.WeatherDtoToWeatherMapper>(
      () => _i9.WeatherDtoToWeatherMapper());
  gh.lazySingleton<_i10.WeatherService>(
      () => _i11.WeatherServiceImpl(get<_i8.WeatherApiDataSource>()));
  gh.factory<_i12.IsLocationPermissionsGrantedUseCase>(() =>
      _i12.IsLocationPermissionsGrantedUseCase(get<_i5.PermissionsService>()));
  gh.factory<_i13.IsLocationPermissionsPermanentlyDeniedUseCase>(() =>
      _i13.IsLocationPermissionsPermanentlyDeniedUseCase(
          get<_i5.PermissionsService>()));
  gh.factory<_i14.OpenSettingsUseCase>(
      () => _i14.OpenSettingsUseCase(get<_i5.PermissionsService>()));
  gh.factory<_i15.LocationPageCubit>(() => _i15.LocationPageCubit(
      get<_i14.OpenSettingsUseCase>(),
      get<_i7.RequestLocationPermissionsUseCase>(),
      get<_i12.IsLocationPermissionsGrantedUseCase>(),
      get<_i13.IsLocationPermissionsPermanentlyDeniedUseCase>()));
  return get;
}

class _$DioModule extends _i16.DioModule {}
