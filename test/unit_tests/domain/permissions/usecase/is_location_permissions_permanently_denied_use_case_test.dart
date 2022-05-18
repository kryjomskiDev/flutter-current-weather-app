import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';

import 'is_location_permissions_permanently_denied_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late PermissionsService _permissionService;
  late IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;

  setUp(() {
    _permissionService = MockPermissionsService();
    _isLocationPermissionsPermanentlyDeniedUseCase = IsLocationPermissionsPermanentlyDeniedUseCase(_permissionService);
  });

  test("returns true when location permissions permanently denied.", () async {
    when(_permissionService.isLocationPermissionsPermanentlyDenied()).thenAnswer((_) => Future.value(true));

    expect(await _isLocationPermissionsPermanentlyDeniedUseCase(), true);
  });

  test("returns false when location permissions permanently denied.", () async {
    when(_permissionService.isLocationPermissionsPermanentlyDenied()).thenAnswer((_) => Future.value(false));

    expect(await _isLocationPermissionsPermanentlyDeniedUseCase(), false);
  });
}
