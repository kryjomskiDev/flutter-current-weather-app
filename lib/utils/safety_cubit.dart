import 'package:bloc/bloc.dart';

abstract class WeatherAppCubit<State> extends BlocBase<State> {
  WeatherAppCubit(State state) : super(state);

  @override
  void emit(State state) {
    if (isClosed) {
      return;
    } else {
      super.emit(state);
    }
  }
}
