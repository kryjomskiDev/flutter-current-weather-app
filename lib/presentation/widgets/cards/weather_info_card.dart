import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({Key? key}) : super(key: key);

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
        child: const _CardBody(),
      );
}

class _CardBody extends StatelessWidget {
  const _CardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Warszawa',
            style: AppTypography.title.copyWith(
              color: context.getColors().white,
            ),
          ),
          SizedBox(height: 20.h),
          const _WeatherTile(),
          SizedBox(height: 20.h),
          Text(
            'Słonecznie',
            style: AppTypography.subTitle.copyWith(
              color: context.getColors().white,
            ),
          ),
        ],
      );
}

class _WeatherTile extends StatelessWidget {
  const _WeatherTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            IconsSvg.location,
            height: 30.h,
          ),
          SizedBox(width: 10.w),
          Text(
            '36C',
            style: AppTypography.title,
          ),
        ],
      );
}
