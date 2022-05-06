import 'package:flutter/material.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';

class AppLoadingSpinner extends StatelessWidget {
  const AppLoadingSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          color: context.getColors().mainColor,
        ),
      );
}
