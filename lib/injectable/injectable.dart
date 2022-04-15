import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wheather_app/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies(String envrionment) => $initGetIt(getIt, environment: envrionment);
