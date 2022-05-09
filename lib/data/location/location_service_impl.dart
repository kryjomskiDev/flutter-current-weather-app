import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:wheather_app/domain/location/service/location_service.dart';

@LazySingleton(as: LocationService)
class LocationServiceImpl implements LocationService {
  final Location _location = Location();

  @override
  Future<LocationData> getLocation() async => await _location.getLocation();
}
