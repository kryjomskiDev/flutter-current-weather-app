import 'package:permission_handler/permission_handler.dart';

abstract class PermissionsService {
  Future<PermissionStatus> getLocationPermissions();
  Future<PermissionStatus> requestLocationPermissions();
  Future<bool> isLocationPermissionsGranted();
  Future<bool> isLocationPermissionsPermanentlyDenied();
}
