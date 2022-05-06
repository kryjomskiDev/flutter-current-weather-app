import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permission_on_android_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_city_name_use_case.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_state.dart';
import 'package:wheather_app/presentation/pages/search/search_page.dart';

@injectable
class SearchPageCubit extends Cubit<SearchPageState> {
  late bool _isLocationGranted;

  final OpenSettingsUseCase _openSettingsUseCase;
  final RequestLocationPermissionOnAndroidUseCase _requestLocationPermissionOnAndroidUseCase;
  final RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  final IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  final IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;
  final GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;

  SearchPageCubit(
    this._getWeatherByCityNameUseCase,
    this._openSettingsUseCase,
    this._requestLocationPermissionOnAndroidUseCase,
    this._isLocationPermissionsGrantedUseCase,
    this._isLocationPermissionsPermanentlyDeniedUseCase,
    this._requestLocationPermissionsUseCase,
  ) : super(const SearchPageState.initial());

  Future<void> init() async {
    emit(const SearchPageState.loading());
    await _handleLocationPermission();
    if (!_isLocationGranted) {
      requestLocationPermissions();
    }
    emit(const SearchPageState.loaded());
  }

  Future<void> _handleLocationPermission() async =>
      _isLocationGranted = await _isLocationPermissionsGrantedUseCase.call();

  Future<void> requestLocationPermissions() async {
    if (Platform.isIOS) {
      final isLocationPermissionsPermanentlyDenied = await _isLocationPermissionsPermanentlyDeniedUseCase.call();

      isLocationPermissionsPermanentlyDenied
          ? await _openSettingsUseCase.call()
          : await _requestLocationPermissionsUseCase.call();
    } else {
      if (await _requestLocationPermissionOnAndroidUseCase.call()) {
        _openSettingsUseCase.call();
      }
    }
    await _handleLocationPermission();
    if (!_isLocationGranted) {
      emit(const SearchPageState.permissionsNotGranted());
    }
  }

  Future<void> getWeatherByCityName(String cityName) async {
    emit(const SearchPageState.loading());
    final Weather weather = await _getWeatherByCityNameUseCase.call(cityName);

    emit(SearchPageState.loaded(weather: weather));
  }
}
