import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:wheather_app/domain/weather/service/location_service.dart';

@injectable
class GetLocationDataUseCase {
  final LocationService _locationService;
  GetLocationDataUseCase(this._locationService);

  Future<LocationData> call() async => await _locationService.getLocation();
}
