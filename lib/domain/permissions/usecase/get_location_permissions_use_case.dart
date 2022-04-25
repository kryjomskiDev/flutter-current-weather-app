import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@injectable
class GetLocationPermissionsUseCase {
  final PermissionsService _service;

  GetLocationPermissionsUseCase(this._service);

  Future<PermissionStatus> call() async => await _service.getLocationPermissions();
}
