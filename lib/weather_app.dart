import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/presentation/pages/home_page.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Device.get().isTablet ? _tabletSize : _mobileSize,
      builder: () => MaterialApp(
        localizationsDelegates: const [
          Strings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        supportedLocales: Strings.delegate.supportedLocales,
        home: const HomePage(),
      ),
    );
  }
}
