import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/style/images.dart';

class AllowPermissionsButton extends StatelessWidget {
  final bool isGranted;
  final VoidCallback onPermissionButtonTap;
  final VoidCallback onPermissionIconTap;

  const AllowPermissionsButton({
    required this.isGranted,
    required this.onPermissionButtonTap,
    required this.onPermissionIconTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => isGranted
      ? InkWell(
          onTap: onPermissionIconTap,
          child: SvgPicture.asset(IconsSvg.permissionsGranted),
        )
      : OutlinedButton(
          onPressed: onPermissionButtonTap,
          style: OutlinedButton.styleFrom(
            backgroundColor: context.getColors().mainColor,
            primary: context.getColors().white,
          ),
          child: Text(Strings.of(context).allow),
        );
}
