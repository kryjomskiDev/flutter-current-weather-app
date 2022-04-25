import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/presentation/widgets/cards/weather_info_card.dart';
import 'package:wheather_app/style/app_typography.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aktualna Pogoda \nW',
              style: AppTypography.title,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),
            const WeatherInfoCard(),
          ],
        ),
      ),
    );
  }
}
