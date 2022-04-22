// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/location/location_page.dart' as _i2;
import '../pages/main_page/main_page.dart' as _i1;
import '../pages/search/search_page.dart' as _i3;
import '../pages/settings/settings_page.dart' as _i4;

class MainRouter extends _i5.RootStackRouter {
  MainRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    LocationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LocationPage());
    },
    SearchRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SearchPage());
    },
    SettingsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'main-page', fullMatch: true),
        _i5.RouteConfig(MainRoute.name, path: 'main-page', children: [
          _i5.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i5.RouteConfig(SearchRoute.name,
              path: 'search', parent: MainRoute.name),
          _i5.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(MainRoute.name, path: 'main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.LocationPage]
class LocationRoute extends _i5.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
