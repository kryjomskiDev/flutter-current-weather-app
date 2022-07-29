import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/data/location/location_service_impl.dart';
import 'package:wheather_app/injectable/location/location_injectable.mocks.dart';

void main() {
  late Location _location;
  late LocationServiceImpl _locationService;

  setUp(() {
    _location = MockLocation();
    _locationService = LocationServiceImpl(_location);
  });

  group("Location service", () {
    test("Gets LocationData succesfully", () async {
      final LocationData locationData = LocationData.fromMap({"latitude": 30.23, "longitude": 12.33});

      when(_location.getLocation()).thenAnswer((_) => Future.value(locationData));

      expect(await _locationService.getLocation(), locationData);
    });

    test("throws error when getting location data", () async {
      when(_location.getLocation()).thenAnswer((_) => Future.error("error"));
      await expectLater(_locationService.getLocation(), throwsA("error"));
    });
  });
}
