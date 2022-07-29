// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:location/location.dart' as _i5;
import 'package:permission_handler/permission_handler.dart' as _i8;

import '../data/api_url_provider.dart' as _i3;
import '../data/location/location_service_impl.dart' as _i7;
import '../data/permissions/permissions_service_impl.dart' as _i10;
import '../data/weather/data_source/weather_api_data_source.dart' as _i13;
import '../data/weather/mapper/weather_dto_to_weather_mapper.dart' as _i20;
import '../data/weather/mapper/weather_icon_mapper.dart' as _i14;
import '../data/weather/service/weather_service_impl.dart' as _i22;
import '../domain/location/service/location_service.dart' as _i6;
import '../domain/location/usecase/get_location_data_use_case.dart' as _i15;
import '../domain/permissions/service/permissions_service.dart' as _i9;
import '../domain/permissions/usecase/is_location_permissions_granted_use_case.dart'
    as _i16;
import '../domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart'
    as _i17;
import '../domain/permissions/usecase/open_settings_use_case.dart' as _i18;
import '../domain/permissions/usecase/request_location_permission_on_android_use_case.dart'
    as _i11;
import '../domain/permissions/usecase/request_location_permissions_use_case.dart'
    as _i12;
import '../domain/weather/service/weather_service.dart' as _i21;
import '../domain/weather/usecase/get_weather_by_city_name_use_case.dart'
    as _i23;
import '../domain/weather/usecase/get_weather_by_cords_use_case.dart' as _i24;
import '../presentation/pages/location/cubit/location_page_cubit.dart' as _i25;
import '../presentation/pages/search/cubit/search_page_cubit.dart' as _i26;
import '../presentation/pages/settings/cubit/settings_page_cubit.dart' as _i19;
import 'dio/dio_injectable.dart' as _i27;
import 'location/location_injectable.dart' as _i28;
import 'permissions/permissions_injectable.dart' as _i29;

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
  final locationInjectable = _$LocationInjectable();
  final permissionsModule = _$PermissionsModule();
  gh.singleton<_i3.ApiUrlProvider>(_i3.ApiUrlProvider());
  gh.lazySingleton<_i4.Dio>(() => dioModule.dio(get<_i3.ApiUrlProvider>()),
      registerFor: {_dev, _prod});
  gh.singleton<_i4.Dio>(dioModule.testDio(), registerFor: {_test});
  gh.lazySingleton<_i5.Location>(() => locationInjectable.location(),
      registerFor: {_dev, _prod});
  gh.singleton<_i5.Location>(locationInjectable.testLocation(),
      registerFor: {_test});
  gh.lazySingleton<_i6.LocationService>(
      () => _i7.LocationServiceImpl(get<_i5.Location>()));
  gh.lazySingleton<_i8.PermissionWithService>(() => permissionsModule.instace,
      registerFor: {_dev, _prod});
  gh.singleton<_i8.PermissionWithService>(permissionsModule.testInstance(),
      registerFor: {_test});
  gh.lazySingleton<_i9.PermissionsService>(
      () => _i10.PermissionsServiceImpl(get<_i8.PermissionWithService>()));
  gh.factory<_i11.RequestLocationPermissionOnAndroidUseCase>(() =>
      _i11.RequestLocationPermissionOnAndroidUseCase(
          get<_i9.PermissionsService>()));
  gh.factory<_i12.RequestLocationPermissionsUseCase>(() =>
      _i12.RequestLocationPermissionsUseCase(get<_i9.PermissionsService>()));
  gh.factory<_i13.WeatherApiDataSource>(
      () => _i13.WeatherApiDataSource(get<_i4.Dio>()));
  gh.factory<_i14.WeatherIconMapper>(() => _i14.WeatherIconMapper());
  gh.factory<_i15.GetLocationDataUseCase>(
      () => _i15.GetLocationDataUseCase(get<_i6.LocationService>()));
  gh.factory<_i16.IsLocationPermissionsGrantedUseCase>(() =>
      _i16.IsLocationPermissionsGrantedUseCase(get<_i9.PermissionsService>()));
  gh.factory<_i17.IsLocationPermissionsPermanentlyDeniedUseCase>(() =>
      _i17.IsLocationPermissionsPermanentlyDeniedUseCase(
          get<_i9.PermissionsService>()));
  gh.factory<_i18.OpenSettingsUseCase>(
      () => _i18.OpenSettingsUseCase(get<_i9.PermissionsService>()));
  gh.factory<_i19.SettingsPageCubit>(() => _i19.SettingsPageCubit(
      get<_i18.OpenSettingsUseCase>(),
      get<_i11.RequestLocationPermissionOnAndroidUseCase>(),
      get<_i16.IsLocationPermissionsGrantedUseCase>(),
      get<_i12.RequestLocationPermissionsUseCase>(),
      get<_i17.IsLocationPermissionsPermanentlyDeniedUseCase>()));
  gh.factory<_i20.WeatherDtoToWeatherMapper>(
      () => _i20.WeatherDtoToWeatherMapper(get<_i14.WeatherIconMapper>()));
  gh.lazySingleton<_i21.WeatherService>(() => _i22.WeatherServiceImpl(
      get<_i13.WeatherApiDataSource>(),
      get<_i20.WeatherDtoToWeatherMapper>(),
      get<_i3.ApiUrlProvider>()));
  gh.factory<_i23.GetWeatherByCityNameUseCase>(
      () => _i23.GetWeatherByCityNameUseCase(get<_i21.WeatherService>()));
  gh.factory<_i24.GetWeatherByCordsUseCase>(
      () => _i24.GetWeatherByCordsUseCase(get<_i21.WeatherService>()));
  gh.factory<_i25.LocationPageCubit>(() => _i25.LocationPageCubit(
      get<_i18.OpenSettingsUseCase>(),
      get<_i12.RequestLocationPermissionsUseCase>(),
      get<_i16.IsLocationPermissionsGrantedUseCase>(),
      get<_i17.IsLocationPermissionsPermanentlyDeniedUseCase>(),
      get<_i15.GetLocationDataUseCase>(),
      get<_i24.GetWeatherByCordsUseCase>(),
      get<_i11.RequestLocationPermissionOnAndroidUseCase>()));
  gh.factory<_i26.SearchPageCubit>(
      () => _i26.SearchPageCubit(get<_i23.GetWeatherByCityNameUseCase>()));
  return get;
}

class _$DioModule extends _i27.DioModule {}

class _$LocationInjectable extends _i28.LocationInjectable {}

class _$PermissionsModule extends _i29.PermissionsModule {}
