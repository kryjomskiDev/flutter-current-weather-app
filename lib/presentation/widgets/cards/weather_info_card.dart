import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({
    required this.showErrorBody,
    this.weather,
    this.onReloadButtonTap,
    Key? key,
  }) : super(key: key);
  final Weather? weather;
  final bool showErrorBody;
  final VoidCallback? onReloadButtonTap;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 200.h,
        decoration: BoxDecoration(
          color: context.getColors().cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: showErrorBody
            ? _CardErrorBody(
                onReloadButtonTap: onReloadButtonTap,
              )
            : _CardBody(
                weather: weather!,
              ),
      );
}

class _CardErrorBody extends StatelessWidget {
  const _CardErrorBody({this.onReloadButtonTap, Key? key}) : super(key: key);
  final VoidCallback? onReloadButtonTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onReloadButtonTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.of(context).try_again,
              style: AppTypography.title.copyWith(
                color: context.getColors().white,
              ),
            ),
            SizedBox(height: 20.h),
            SvgPicture.asset(
              IconsSvg.reload,
              height: 31.h,
            ),
          ],
        ),
      );
}

class _CardBody extends StatelessWidget {
  const _CardBody({
    required this.weather,
    Key? key,
  }) : super(key: key);
  final Weather weather;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weather.title,
            style: AppTypography.title.copyWith(
              color: context.getColors().white,
            ),
          ),
          SizedBox(height: 20.h),
          _WeatherTile(
            temperature: weather.temperature,
            iconPath: weather.icon,
          ),
          SizedBox(height: 20.h),
          Text(
            weather.descritpion,
            style: AppTypography.subTitle.copyWith(
              color: context.getColors().white,
            ),
          ),
        ],
      );
}

class _WeatherTile extends StatelessWidget {
  const _WeatherTile({
    required this.temperature,
    required this.iconPath,
    Key? key,
  }) : super(key: key);
  final double temperature;
  final String iconPath;
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            iconPath,
            height: 80.h,
          ),
          SizedBox(width: 10.w),
          Text(
            '${temperature.round()} °C',
            style: AppTypography.title,
          ),
        ],
      );
}
