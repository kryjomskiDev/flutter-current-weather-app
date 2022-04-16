import 'package:auto_route/annotations.dart';
import 'package:wheather_app/presentation/pages/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    )
  ],
)
class $MainRouter {}
