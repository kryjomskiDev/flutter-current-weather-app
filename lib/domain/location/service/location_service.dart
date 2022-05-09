import 'package:location/location.dart';

abstract class LocationService {
  Future<LocationData> getLocation();
}
