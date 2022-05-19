import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/injectable/permissions/permissions_injectable.mocks.dart';

@GenerateMocks([PermissionWithService])
@module
abstract class PermissionsModule {
  @lazySingleton
  @dev
  @prod
  PermissionWithService get instace => Permission.locationWhenInUse;

  @singleton
  @test
  PermissionWithService testInstance() => MockPermissionWithService();
}
