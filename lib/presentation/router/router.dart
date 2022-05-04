import 'package:auto_route/annotations.dart';
import 'package:wheather_app/presentation/pages/location/location_page.dart';
import 'package:wheather_app/presentation/pages/main_page/main_page.dart';
import 'package:wheather_app/presentation/pages/search/search_page.dart';
import 'package:wheather_app/presentation/pages/settings/settings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: MainPage,
      path: 'main-page',
      children: [
        AutoRoute(page: LocationPage, path: 'location'),
        AutoRoute(page: SearchPage, path: 'search'),
        AutoRoute(page: SettingsPage, path: 'settings'),
      ],
    ),
  ],
)
class $MainRouter {}
