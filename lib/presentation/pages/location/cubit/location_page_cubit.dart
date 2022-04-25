import 'package:bloc/bloc.dart';
import 'package:wheather_app/domain/permissions/usecase/get_location_permissions_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';

class LocationPageCubit extends Cubit<LocationPageState> {
  final GetLocationPermissionsUseCase _getLocationPermissionsUseCase;
  final RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  final IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  final IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;

  LocationPageCubit(
    this._getLocationPermissionsUseCase,
    this._requestLocationPermissionsUseCase,
    this._isLocationPermissionsGrantedUseCase,
    this._isLocationPermissionsPermanentlyDeniedUseCase,
  ) : super(const LocationPageState.inital());
}
