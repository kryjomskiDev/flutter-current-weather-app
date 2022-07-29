import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTypography {
  static const fontFamily = 'RobotoFlex';

  static final title = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final subTitle = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w500,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final textFieldText = TextStyle(
    fontSize: 15.sp,
  );
}
