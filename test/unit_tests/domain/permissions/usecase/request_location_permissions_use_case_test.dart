import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';

import 'request_location_permissions_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late PermissionsService _permissionsService;
  late RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;

  setUp(() {
    _permissionsService = MockPermissionsService();
    _requestLocationPermissionsUseCase = RequestLocationPermissionsUseCase(_permissionsService);
  });

  test("getting permissions status granted successfully.", () async {
    const status = PermissionStatus.granted;

    when(_permissionsService.requestLocationPermissions()).thenAnswer((_) => Future.value(status));

    expect(await _requestLocationPermissionsUseCase(), status);
  });

  test("getting permissions status denied successfully.", () async {
    const status = PermissionStatus.denied;

    when(_permissionsService.requestLocationPermissions()).thenAnswer((_) => Future.value(status));

    expect(await _requestLocationPermissionsUseCase(), status);
  });

  test("getting permissions status permanentlyDenied successfully.", () async {
    const status = PermissionStatus.permanentlyDenied;

    when(_permissionsService.requestLocationPermissions()).thenAnswer((_) => Future.value(status));

    expect(await _requestLocationPermissionsUseCase(), status);
  });
}
