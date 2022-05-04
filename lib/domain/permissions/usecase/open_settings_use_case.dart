import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';

@injectable
class OpenSettingsUseCase {
  final PermissionsService _service;
  OpenSettingsUseCase(this._service);

  Future<bool> call() async => _service.openSettings();
}
