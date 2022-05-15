import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permission_on_android_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/presentation/pages/settings/cubit/settings_page_state.dart';

@injectable
class SettingsPageCubit extends Cubit<SettingsPageState> {
  late bool isLocationGranted;

  final OpenSettingsUseCase _openSettingsUseCase;
  final RequestLocationPermissionOnAndroidUseCase _requestLocationPermissionOnAndroidUseCase;
  final RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  final IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  final IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;

  SettingsPageCubit(
    this._openSettingsUseCase,
    this._requestLocationPermissionOnAndroidUseCase,
    this._isLocationPermissionsGrantedUseCase,
    this._requestLocationPermissionsUseCase,
    this._isLocationPermissionsPermanentlyDeniedUseCase,
  ) : super(const SettingsPageState.initial());

  Future<void> init() => _checkPermissionStatus();

  Future<void> onPermissionButtonTap() async {
    Platform.isIOS ? await _requestPermissionsOnIOS() : await _requestPermissionsOnAndroid();

    if (!isClosed) {
      await _checkPermissionStatus();
    }
  }

  Future<void> _checkPermissionStatus() async {
    emit(const SettingsPageState.loading());
    isLocationGranted = await _isLocationPermissionsGrantedUseCase.call();
    emit(const SettingsPageState.loaded());
  }

  Future<void> _requestPermissionsOnIOS() async {
    final isLocationPermissionsPermanentlyDenied = await _isLocationPermissionsPermanentlyDeniedUseCase.call();

    isLocationPermissionsPermanentlyDenied
        ? await _openSettingsUseCase.call()
        : await _requestLocationPermissionsUseCase.call();
  }

  Future<void> _requestPermissionsOnAndroid() async {
    if (await _requestLocationPermissionOnAndroidUseCase.call()) {
      _openSettingsUseCase.call();
    }
  }
}
