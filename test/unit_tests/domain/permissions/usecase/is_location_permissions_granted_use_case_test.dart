import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';

import 'is_location_permissions_granted_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late PermissionsService _permissionService;
  late IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;

  setUp(() {
    _permissionService = MockPermissionsService();
    _isLocationPermissionsGrantedUseCase = IsLocationPermissionsGrantedUseCase(_permissionService);
  });

  test("returns true when location permissions granted.", () async {
    when(_permissionService.isLocationPermissionsGranted()).thenAnswer((_) => Future.value(true));

    expect(await _isLocationPermissionsGrantedUseCase(), true);
  });

  test("returns false when location permissions not granted.", () async {
    when(_permissionService.isLocationPermissionsGranted()).thenAnswer((_) => Future.value(false));

    expect(await _isLocationPermissionsGrantedUseCase(), false);
  });
}
