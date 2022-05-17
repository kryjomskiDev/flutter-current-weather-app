import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@injectable
class IsLocationPermissionsPermanentlyDeniedUseCase {
  final PermissionsService _service;

  IsLocationPermissionsPermanentlyDeniedUseCase(this._service);

  Future<bool> call() => _service.isLocationPermissionsPermanentlyDenied();
}
