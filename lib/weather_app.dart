import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Device.get().isTablet ? _tabletSize : _mobileSize,
      builder: () => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}
