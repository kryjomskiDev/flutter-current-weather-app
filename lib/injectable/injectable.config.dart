// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_url_provider.dart' as _i3;
import '../data/permissions/permissions_service_impl.dart' as _i6;
import '../domain/permissions/service/permissions_service.dart' as _i5;
import '../domain/permissions/usecase/get_location_permissions_use_case.dart'
    as _i7;
import 'dio/dio_injectable.dart' as _i8;

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
  gh.factory<_i7.GetLocationPermissionsUseCase>(
      () => _i7.GetLocationPermissionsUseCase(get<_i5.PermissionsService>()));
  return get;
}

class _$DioModule extends _i8.DioModule {}
