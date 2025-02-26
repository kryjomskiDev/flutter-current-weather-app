import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorBase {}

abstract class AppColorBase {
  late Color mainColor;
  late Color bgColor;
  late Color white;
  late Color black;
  late Color cardColor;
  late Color transparent;
}

class AppStandardColors {
  static const Color mainColor = Color(0xFFFF7700);
  static const Color bgColor = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color cardColor = Color(0xFFA2DBFA);
  static const Color transparent = Colors.transparent;
}
