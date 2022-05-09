import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';

class ErrorInfo extends StatelessWidget {
  const ErrorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              IconsSvg.error,
              height: 90.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              Strings.of(context).search_page_error_message,
              style: AppTypography.subTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
