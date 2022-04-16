import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/presentation/router/router.gr.dart';
import 'package:wheather_app/utils/hide_keyboard.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);

class WeatherApp extends StatelessWidget {
  final MainRouter mainRouter;
  const WeatherApp({required this.mainRouter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _globalUnfocusKeyboard(
        context: context,
        child: ScreenUtilInit(
          designSize: Device.get().isTablet ? _tabletSize : _mobileSize,
          builder: () => MaterialApp.router(
            routerDelegate: mainRouter.delegate(),
            routeInformationParser: mainRouter.defaultRouteParser(),
            localizationsDelegates: const [
              Strings.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            supportedLocales: Strings.delegate.supportedLocales,
          ),
        ),
      );

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}
