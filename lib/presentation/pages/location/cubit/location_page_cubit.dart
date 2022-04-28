import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/usecase/get_location_permissions_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';

@injectable
class LocationPageCubit extends Cubit<LocationPageState> {
  late bool _isLocationGranted;

  final OpenSettingsUseCase _openSettingsUseCase;
  final RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  final IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  final IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;

  LocationPageCubit(
    this._openSettingsUseCase,
    this._requestLocationPermissionsUseCase,
    this._isLocationPermissionsGrantedUseCase,
    this._isLocationPermissionsPermanentlyDeniedUseCase,
  ) : super(const LocationPageState.inital());

  Future<void> init() async {
    emit(const LocationPageState.loading());
    await _handleLocationPermissions();
    if (!_isLocationGranted) {
      requestLocationPermissions();
    }

    emit(const LocationPageState.loaded());
  }

  Future<void> _handleLocationPermissions() async {
    _isLocationGranted = await _isLocationPermissionsGrantedUseCase.call();
  }

  Future<void> requestLocationPermissions() async {
    final isLocationPermissionsPermanentlyDenied = await _isLocationPermissionsPermanentlyDeniedUseCase.call();

    isLocationPermissionsPermanentlyDenied
        ? await _openSettingsUseCase.call()
        : await _requestLocationPermissionsUseCase.call();

    await _handleLocationPermissions();
  }
}
