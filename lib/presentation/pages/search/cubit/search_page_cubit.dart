import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_city_name_use_case.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_state.dart';

@injectable
class SearchPageCubit extends Cubit<SearchPageState> {
  final GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;

  SearchPageCubit(
    this._getWeatherByCityNameUseCase,
  ) : super(const SearchPageState.loaded());

  Future<void> getWeatherByCityName(String cityName) async {
    try {
      emit(const SearchPageState.loading());
      final Weather weather = await _getWeatherByCityNameUseCase.call(cityName);
      emit(SearchPageState.loaded(weather: weather));
    } catch (error, st) {
      Fimber.e('Error During getting weather by cityname', ex: error, stacktrace: st);
      emit(const SearchPageState.error());
    }
  }
}
