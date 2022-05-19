import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:wheather_app/injectable/location/location_injectable.mocks.dart';

@GenerateMocks([Location])
@module
abstract class LocationInjectable {
  @lazySingleton
  @dev
  @prod
  Location location() => Location();

  @singleton
  @test
  Location testLocation() => MockLocation();
}
