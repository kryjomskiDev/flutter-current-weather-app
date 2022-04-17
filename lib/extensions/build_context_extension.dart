import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheather_app/style/themes.dart';

extension ThemeProvider on BuildContext {
  AppTheme getColors({bool listen = true}) => Provider.of<ThemeModel>(this, listen: listen).theme;
}
