import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/location/service/location_service.dart';
import 'package:wheather_app/domain/location/usecase/get_location_data_use_case.dart';

import 'get_location_data_use_case_test.mocks.dart';

@GenerateMocks([LocationService])
void main() {
  late LocationService _locationService;
  late GetLocationDataUseCase _getLocationDataUseCase;

  setUp(() {
    _locationService = MockLocationService();
    _getLocationDataUseCase = GetLocationDataUseCase(_locationService);
  });

  test("getting location data successfully", () async {
    final locationData = LocationData.fromMap({"latitude": 30.23, "longitude": 12.33});

    when(_locationService.getLocation()).thenAnswer((_) => Future.value(locationData));

    expect(await _getLocationDataUseCase(), locationData);
  });
}
