import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Strings.of(context).hello,
                style: TextStyle(
                  fontSize: 30.sp,
                )),
            SizedBox(
              height: 20.h,
              width: double.infinity,
            ),
            const FlutterLogo(size: 100),
          ],
        ),
      );
}
