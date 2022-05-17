import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/style/app_typography.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;

  const SettingsTile({
    required this.title,
    required this.subtitle,
    this.trailing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTypography.title.copyWith(fontSize: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  subtitle,
                  softWrap: true,
                ),
              ),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
          const _TabDivider()
        ],
      );
}

class _TabDivider extends StatelessWidget {
  const _TabDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(height: 5.h),
          Divider(
            height: 2.h,
            color: Colors.black,
          ),
          SizedBox(height: 5.h),
        ],
      );
}
