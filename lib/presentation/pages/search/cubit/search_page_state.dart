import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
part 'search_page_state.freezed.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState.initial() = _SearchPageStateInitial;
  const factory SearchPageState.loading() = SearchPageStateLoading;
  const factory SearchPageState.loaded({Weather? weather}) = SearchPageStateLoaded;
  const factory SearchPageState.error() = SearchPageStateError;
}
