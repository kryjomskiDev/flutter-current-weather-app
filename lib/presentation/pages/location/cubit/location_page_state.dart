import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_page_state.freezed.dart';

@freezed
class LocationPageState with _$LocationPageState {
  const factory LocationPageState.inital() = _LocationPageInital;
  const factory LocationPageState.loading() = LocationPageLoading;
  const factory LocationPageState.loaded() = LocationPageLoaded;
}
