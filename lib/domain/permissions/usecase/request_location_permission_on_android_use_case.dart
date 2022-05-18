import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class RequestLocationPermissionOnAndroidUseCase {
  final PermissionsService _service;
  RequestLocationPermissionOnAndroidUseCase(this._service);

  Future<bool> call() => _service.requestLocationPermissions().isPermanentlyDenied;
}
