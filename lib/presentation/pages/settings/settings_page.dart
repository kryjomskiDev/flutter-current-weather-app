import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/settings/cubit/settings_page_cubit.dart';
import 'package:wheather_app/presentation/pages/settings/cubit/settings_page_state.dart';
import 'package:wheather_app/presentation/widgets/spinner/app_loading_spinner.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';

class SettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SettingsPageCubit>()..init(),
        child: this,
      );
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Settings',
            style: AppTypography.subTitle.copyWith(color: Colors.black),
          ),
        ),
        body: BlocBuilder<SettingsPageCubit, SettingsPageState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const AppLoadingSpinner(),
            loaded: () => _SettingPageBody(
              isGranted: context.read<SettingsPageCubit>().isLocationGranted,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}

class _SettingPageBody extends StatelessWidget {
  final bool isGranted;
  const _SettingPageBody({required this.isGranted, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                IconsSvg.settings,
                height: 120.h,
              ),
              SizedBox(height: 30.h),
              SettingsTile(
                  title: 'Permissions',
                  subtitle: 'Location Permissions',
                  trailing: AllowPermissionsButton(
                    isGranted: context.read<SettingsPageCubit>().isLocationGranted,
                    onPressed: context.read<SettingsPageCubit>().onPermissionButtonTap,
                  )),
              const SettingsTile(
                title: 'About',
                subtitle: 'In this app you can get weather for your current location or by searching by City name',
              ),
              const SettingsTile(
                title: 'Provided By',
                subtitle: 'Open Weather Api',
              )
            ],
          ),
        ),
      );
}

class AllowPermissionsButton extends StatelessWidget {
  final bool isGranted;
  final VoidCallback onPressed;

  const AllowPermissionsButton({
    required this.isGranted,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => isGranted
      ? SvgPicture.asset(IconsSvg.permissionsGranted)
      : OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: context.getColors().mainColor,
            primary: context.getColors().white,
          ),
          child: const Text('Allow'),
        );
}

class TabDivider extends StatelessWidget {
  const TabDivider({Key? key}) : super(key: key);

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
          const TabDivider()
        ],
      );
}
