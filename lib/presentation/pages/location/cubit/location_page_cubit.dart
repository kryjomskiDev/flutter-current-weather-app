import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permission_on_android_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/domain/weather/usecase/get_location_data_use_case.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_cords_use_case.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';

@injectable
class LocationPageCubit extends Cubit<LocationPageState> {
  late bool _isLocationGranted;

  final OpenSettingsUseCase _openSettingsUseCase;
  final RequestLocationPermissionOnAndroidUseCase _requestLocationPermissionOnAndroidUseCase;
  final RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  final IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  final IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;
  final GetLocationDataUseCase _getLocationDataUseCase;
  final GetWeatherByCordsUseCase _getWeatherByCordsUseCase;

  LocationPageCubit(
    this._openSettingsUseCase,
    this._requestLocationPermissionsUseCase,
    this._isLocationPermissionsGrantedUseCase,
    this._isLocationPermissionsPermanentlyDeniedUseCase,
    this._getLocationDataUseCase,
    this._getWeatherByCordsUseCase,
    this._requestLocationPermissionOnAndroidUseCase,
  ) : super(const LocationPageState.inital());

  Future<void> init() async {
    emit(const LocationPageState.loading());
    await _handleLocationPermissions();
    if (!_isLocationGranted) {
      requestLocationPermissions();
    } else {
      await getWeather();
    }
  }

  Future<void> _handleLocationPermissions() async {
    _isLocationGranted = await _isLocationPermissionsGrantedUseCase.call();
  }

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
    await _handleLocationPermissions();
    if (!_isLocationGranted) {
      emit(const LocationPageState.permissionsNotGranted());
    }
  }

  Future<void> onReloadTap() async {
    await requestLocationPermissions();

    _isLocationGranted ? await getWeather() : emit(const LocationPageState.permissionsNotGranted());
  }

  Future<void> getWeather() async {
    emit(const LocationPageState.loading());
    final location = await _getLocationDataUseCase.call();

    if (location.latitude != null && location.longitude != null) {
      final weather = await _getWeatherByCordsUseCase.call(location.latitude!, location.longitude!);
      emit(LocationPageState.loaded(weather: weather));
    }
  }
}
