import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@injectable
class RequestLocationPermissionsUseCase {
  final PermissionsService _service;
  RequestLocationPermissionsUseCase(this._service);

  Future<PermissionStatus> call() async => _service.requestLocationPermissions();
}
