import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wheather_app/data/permissions/permissions_service_impl.dart';
import 'package:wheather_app/injectable/permissions/permissions_injectable.mocks.dart';

void main() {
  late PermissionWithService _permissionWithService;
  late PermissionsServiceImpl _service;

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    _permissionWithService = MockPermissionWithService();
    _service = PermissionsServiceImpl(_permissionWithService);
  });

  group("Permissions service", () {
    test("Gets PermissionStatus succesfully.", () async {
      const PermissionStatus expectedStatus = PermissionStatus.granted;

      when(_permissionWithService.status).thenAnswer((_) => Future.value(expectedStatus));
    });
  });
}
