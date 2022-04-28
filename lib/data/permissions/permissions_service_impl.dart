import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@LazySingleton(as: PermissionsService)
class PermissionsServiceImpl implements PermissionsService {
  @override
  Future<PermissionStatus> getLocationPermissions() => Permission.locationWhenInUse.status;

  @override
  Future<bool> isLocationPermissionsGranted() async {
    final result = await getLocationPermissions();
    return result.isGranted;
  }

  @override
  Future<bool> isLocationPermissionsPermanentlyDenied() async {
    final result = await getLocationPermissions();
    return result.isPermanentlyDenied;
  }

  @override
  Future<PermissionStatus> requestLocationPermissions() async {
    final result = await Permission.locationWhenInUse.request();
    return result;
  }

  @override
  Future<bool> openSettings() => openAppSettings();
}
