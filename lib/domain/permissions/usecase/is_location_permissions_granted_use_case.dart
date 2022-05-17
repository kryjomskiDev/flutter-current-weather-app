import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@injectable
class IsLocationPermissionsGrantedUseCase {
  final PermissionsService _service;

  IsLocationPermissionsGrantedUseCase(this._service);

  Future<bool> call() => _service.isLocationPermissionsGranted();
}
