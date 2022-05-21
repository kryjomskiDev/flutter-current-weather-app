import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/domain/weather/usecase/get_weather_by_city_name_use_case.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_cubit.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_state.dart';

import 'search_page_cubit_test.mocks.dart';

@GenerateMocks([GetWeatherByCityNameUseCase])
void main() {
  late GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;
  late SearchPageCubit cubit;

  const cityName = "city";
  const Weather weather = Weather(
    title: "title",
    descritpion: "descritpion",
    temperature: 0.0,
    icon: "icon",
    locationName: "city",
  );

  const errror = "error";

  setUp(() {
    _getWeatherByCityNameUseCase = MockGetWeatherByCityNameUseCase();
    cubit = SearchPageCubit(_getWeatherByCityNameUseCase);

    when(_getWeatherByCityNameUseCase(cityName)).thenAnswer((_) => Future.value(null));
  });

  test("Has initail loaded state.", () => expect(cubit.state, const SearchPageState.loaded()));

  group("SearchPageCubit getWeatherByCityName tests.", () {
    blocTest(
      "emits loaded state when getWeatherByCityName is called",
      setUp: () {
        when(_getWeatherByCityNameUseCase(cityName)).thenAnswer((_) => Future.value(weather));
      },
      build: () => cubit,
      act: (SearchPageCubit cubit) => cubit.getWeatherByCityName(cityName),
      expect: () => [
        const SearchPageState.loading(),
        const SearchPageState.loaded(weather: weather),
      ],
    );

    blocTest(
      "emits error state when getWeatherByCityName is called and fails.",
      setUp: () {
        when(_getWeatherByCityNameUseCase(cityName)).thenAnswer((_) => Future.error(errror));
      },
      build: () => cubit,
      act: (SearchPageCubit cubit) => cubit.getWeatherByCityName(cityName),
      expect: () => [
        const SearchPageState.loading(),
        const SearchPageState.error(),
      ],
    );
  });
}
