import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/permissions/service/permissions_service.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';

import 'open_settings_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late PermissionsService _permissionService;
  late OpenSettingsUseCase _openSettingsUseCase;

  setUp(() {
    _permissionService = MockPermissionsService();
    _openSettingsUseCase = OpenSettingsUseCase(_permissionService);
  });

  test("returns true when settings can be opened.", () async {
    when(_permissionService.openSettings()).thenAnswer((_) => Future.value(true));

    expect(await _openSettingsUseCase(), true);
  });

  test("returns false when settings can't be opened.", () async {
    when(_permissionService.openSettings()).thenAnswer((_) => Future.value(false));

    expect(await _openSettingsUseCase(), false);
  });
}
