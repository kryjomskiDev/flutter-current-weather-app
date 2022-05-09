import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/presentation/widgets/cards/weather_info_card.dart';
import 'package:wheather_app/style/app_typography.dart';

class PageBodyTemplate extends StatelessWidget {
  const PageBodyTemplate({
    required this.infoWidget,
    this.weather,
    Key? key,
  }) : super(key: key);

  final Weather? weather;
  final Widget infoWidget;

  @override
  Widget build(BuildContext context) => weather != null
      ? SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.of(context).current_weather(weather!.locationName),
                style: AppTypography.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              WeatherInfoCard(
                weather: weather,
                showErrorBody: false,
              ),
            ],
          ),
        )
      : infoWidget;
}
