import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:wheather_app/domain/location/service/location_service.dart';

@injectable
class GetLocationDataUseCase {
  final LocationService _locationService;
  GetLocationDataUseCase(this._locationService);

  Future<LocationData> call() => _locationService.getLocation();
}
