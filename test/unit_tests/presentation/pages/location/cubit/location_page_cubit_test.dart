import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/location/usecase/get_location_data_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_granted_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/is_location_permissions_permanently_denied_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/open_settings_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permission_on_android_use_case.dart';
import 'package:wheather_app/domain/permissions/usecase/request_location_permissions_use_case.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_cords_use_case.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_cubit.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';

import 'location_page_cubit_test.mocks.dart';

@GenerateMocks([
  OpenSettingsUseCase,
  RequestLocationPermissionOnAndroidUseCase,
  RequestLocationPermissionsUseCase,
  IsLocationPermissionsGrantedUseCase,
  IsLocationPermissionsPermanentlyDeniedUseCase,
  GetLocationDataUseCase,
  GetWeatherByCordsUseCase,
])
void main() {
  late OpenSettingsUseCase _openSettingsUseCase;
  late RequestLocationPermissionOnAndroidUseCase _requestLocationPermissionOnAndroidUseCase;
  late RequestLocationPermissionsUseCase _requestLocationPermissionsUseCase;
  late IsLocationPermissionsGrantedUseCase _isLocationPermissionsGrantedUseCase;
  late IsLocationPermissionsPermanentlyDeniedUseCase _isLocationPermissionsPermanentlyDeniedUseCase;
  late GetLocationDataUseCase _getLocationDataUseCase;
  late GetWeatherByCordsUseCase _getWeatherByCordsUseCase;
  late LocationPageCubit cubit;

  const Weather weather = Weather(
    title: "title",
    descritpion: "descritpion",
    temperature: 0.0,
    icon: "icon",
    locationName: "city",
  );

  const PermissionStatus status = PermissionStatus.granted;

  const double lat = 20.0;
  const double lon = 20.0;

  final LocationData locationData = LocationData.fromMap({
    "lat": lat,
    "lon": lon,
  });

  setUp(() {
    _openSettingsUseCase = MockOpenSettingsUseCase();
    _requestLocationPermissionOnAndroidUseCase = MockRequestLocationPermissionOnAndroidUseCase();
    _requestLocationPermissionsUseCase = MockRequestLocationPermissionsUseCase();
    _isLocationPermissionsGrantedUseCase = MockIsLocationPermissionsGrantedUseCase();
    _isLocationPermissionsPermanentlyDeniedUseCase = MockIsLocationPermissionsPermanentlyDeniedUseCase();
    _getLocationDataUseCase = MockGetLocationDataUseCase();
    _getWeatherByCordsUseCase = MockGetWeatherByCordsUseCase();

    cubit = LocationPageCubit(
      _openSettingsUseCase,
      _requestLocationPermissionsUseCase,
      _isLocationPermissionsGrantedUseCase,
      _isLocationPermissionsPermanentlyDeniedUseCase,
      _getLocationDataUseCase,
      _getWeatherByCordsUseCase,
      _requestLocationPermissionOnAndroidUseCase,
    );
  });

  test("has initial state", () => expect(cubit.state, const LocationPageState.inital()));

  group("LocationPageCubit init tests.", () {
    blocTest(
      "Emits loaded state on init.",
      setUp: () {
        when(_isLocationPermissionsGrantedUseCase()).thenAnswer((_) => Future.value(true));
        when(_getLocationDataUseCase()).thenAnswer((_) => Future.value(locationData));
        when(_getWeatherByCordsUseCase(lat, lon)).thenAnswer((_) => Future.value(weather));
      },
      build: () => cubit,
      act: (LocationPageCubit cubit) => cubit.init(),
      expect: () => [
        const LocationPageState.loading(),
        const LocationPageState.loaded(weather: weather),
      ],
    );
  });
}
