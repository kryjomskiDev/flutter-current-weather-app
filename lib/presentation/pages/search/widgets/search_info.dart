import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';

class SearchInfo extends StatelessWidget {
  const SearchInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(IconsSvg.searchColor, height: 80.h),
          SizedBox(height: 10.h),
          Text(
            Strings.of(context).search_page_tap_on_top_info,
            style: AppTypography.title,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
