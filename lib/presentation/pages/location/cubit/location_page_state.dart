import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';

part 'location_page_state.freezed.dart';

@freezed
class LocationPageState with _$LocationPageState {
  const factory LocationPageState.inital() = _LocationPageInital;
  const factory LocationPageState.loading() = LocationPageLoading;
  const factory LocationPageState.error() = LocationPageError;
  const factory LocationPageState.loaded({required Weather weather}) = LocationPageLoaded;
}
