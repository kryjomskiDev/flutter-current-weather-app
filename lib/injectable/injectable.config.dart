// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_url_provider.dart' as _i3;
import '../data/location/location_service_impl.dart' as _i6;
import '../data/permissions/permissions_service_impl.dart' as _i8;
import '../data/weather/data_source/weather_api_data_source.dart' as _i11;
import '../data/weather/mapper/weather_dto_to_weather_mapper.dart' as _i12;
import '../data/weather/service/weather_service_impl.dart' as _i14;
import '../domain/location/service/location_service.dart' as _i5;
import '../domain/location/usecase/get_location_data_use_case.dart' as _i15;
import '../domain/permissions/service/permissions_service.dart' as _i7;
import '../domain/permissions/usecase/is_location_permissions_granted_use_case.dart'
    as _i18;
import '../domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart'
    as _i19;
import '../domain/permissions/usecase/open_settings_use_case.dart' as _i20;
import '../domain/permissions/usecase/request_location_permission_on_android_use_case.dart'
    as _i9;
import '../domain/permissions/usecase/request_location_permissions_use_case.dart'
    as _i10;
import '../domain/weather/service/weather_service.dart' as _i13;
import '../domain/weather/usecase/get_weather_by_city_name_use_case.dart'
    as _i16;
import '../domain/weather/usecase/get_weather_by_cords_use_case.dart' as _i17;
import '../presentation/pages/location/cubit/location_page_cubit.dart' as _i23;
import '../presentation/pages/search/cubit/search_page_cubit.dart' as _i21;
import '../presentation/pages/settings/cubit/settings_page_cubit.dart' as _i22;
import 'dio/dio_injectable.dart' as _i24;

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
  gh.lazySingleton<_i5.LocationService>(() => _i6.LocationServiceImpl());
  gh.lazySingleton<_i7.PermissionsService>(() => _i8.PermissionsServiceImpl());
  gh.factory<_i9.RequestLocationPermissionOnAndroidUseCase>(() =>
      _i9.RequestLocationPermissionOnAndroidUseCase(
          get<_i7.PermissionsService>()));
  gh.factory<_i10.RequestLocationPermissionsUseCase>(() =>
      _i10.RequestLocationPermissionsUseCase(get<_i7.PermissionsService>()));
  gh.factory<_i11.WeatherApiDataSource>(
      () => _i11.WeatherApiDataSource(get<_i4.Dio>()));
  gh.factory<_i12.WeatherDtoToWeatherMapper>(
      () => _i12.WeatherDtoToWeatherMapper());
  gh.lazySingleton<_i13.WeatherService>(() => _i14.WeatherServiceImpl(
      get<_i11.WeatherApiDataSource>(),
      get<_i12.WeatherDtoToWeatherMapper>(),
      get<_i3.ApiUrlProvider>()));
  gh.factory<_i15.GetLocationDataUseCase>(
      () => _i15.GetLocationDataUseCase(get<_i5.LocationService>()));
  gh.factory<_i16.GetWeatherByCityNameUseCase>(
      () => _i16.GetWeatherByCityNameUseCase(get<_i13.WeatherService>()));
  gh.factory<_i17.GetWeatherByCordsUseCase>(
      () => _i17.GetWeatherByCordsUseCase(get<_i13.WeatherService>()));
  gh.factory<_i18.IsLocationPermissionsGrantedUseCase>(() =>
      _i18.IsLocationPermissionsGrantedUseCase(get<_i7.PermissionsService>()));
  gh.factory<_i19.IsLocationPermissionsPermanentlyDeniedUseCase>(() =>
      _i19.IsLocationPermissionsPermanentlyDeniedUseCase(
          get<_i7.PermissionsService>()));
  gh.factory<_i20.OpenSettingsUseCase>(
      () => _i20.OpenSettingsUseCase(get<_i7.PermissionsService>()));
  gh.factory<_i21.SearchPageCubit>(
      () => _i21.SearchPageCubit(get<_i16.GetWeatherByCityNameUseCase>()));
  gh.factory<_i22.SettingsPageCubit>(() => _i22.SettingsPageCubit(
      get<_i20.OpenSettingsUseCase>(),
      get<_i9.RequestLocationPermissionOnAndroidUseCase>(),
      get<_i18.IsLocationPermissionsGrantedUseCase>(),
      get<_i10.RequestLocationPermissionsUseCase>(),
      get<_i19.IsLocationPermissionsPermanentlyDeniedUseCase>()));
  gh.factory<_i23.LocationPageCubit>(() => _i23.LocationPageCubit(
      get<_i20.OpenSettingsUseCase>(),
      get<_i10.RequestLocationPermissionsUseCase>(),
      get<_i18.IsLocationPermissionsGrantedUseCase>(),
      get<_i19.IsLocationPermissionsPermanentlyDeniedUseCase>(),
      get<_i15.GetLocationDataUseCase>(),
      get<_i17.GetWeatherByCordsUseCase>(),
      get<_i9.RequestLocationPermissionOnAndroidUseCase>()));
  return get;
}

class _$DioModule extends _i24.DioModule {}
