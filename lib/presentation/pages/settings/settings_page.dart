import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/settings/cubit/settings_page_cubit.dart';
import 'package:wheather_app/presentation/pages/settings/cubit/settings_page_state.dart';
import 'package:wheather_app/presentation/pages/settings/widgets/allow_permissions_button.dart';
import 'package:wheather_app/presentation/pages/settings/widgets/settings_tile.dart';
import 'package:wheather_app/presentation/widgets/spinner/app_loading_spinner.dart';
import 'package:wheather_app/style/app_typography.dart';
import 'package:wheather_app/style/images.dart';

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
          backgroundColor: context.getColors().transparent,
          shadowColor: context.getColors().transparent,
          centerTitle: true,
          title: Text(
            Strings.of(context).settings,
            style: AppTypography.subTitle.copyWith(color: context.getColors().black),
          ),
        ),
        body: BlocConsumer<SettingsPageCubit, SettingsPageState>(
          listenWhen: (previous, current) => current is SettingsPageStateShowPermissionsInfo,
          buildWhen: (previous, current) => current is SettingsPageStateLoading || current is SettingsPageStateLoaded,
          listener: _listener,
          builder: _builder,
        ),
      );

  void _listener(BuildContext context, SettingsPageState state) => state.maybeWhen(
        showPermissionsInfo: () => Fluttertoast.showToast(
          msg: Strings.of(context).permissions_already_granted,
        ),
        orElse: () => null,
      );

  Widget _builder(BuildContext context, SettingsPageState state) => state.maybeWhen(
        loading: () => const AppLoadingSpinner(),
        loaded: () => _SettingPageBody(
          isGranted: context.read<SettingsPageCubit>().isLocationGranted,
        ),
        orElse: () => const SizedBox.shrink(),
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
              ..._getSettingsTile(context),
            ],
          ),
        ),
      );

  List<SettingsTile> _getSettingsTile(BuildContext context) => [
        SettingsTile(
            title: Strings.of(context).permissions,
            subtitle: Strings.of(context).location_permissions,
            trailing: AllowPermissionsButton(
              isGranted: context.read<SettingsPageCubit>().isLocationGranted,
              onPermissionButtonTap: context.read<SettingsPageCubit>().onPermissionButtonTap,
              onPermissionIconTap: context.read<SettingsPageCubit>().onPermissionsGrantedIconTap,
            )),
        SettingsTile(
          title: Strings.of(context).about,
          subtitle: Strings.of(context).about_descripiton,
        ),
        SettingsTile(
          title: Strings.of(context).powered_by,
          subtitle: Strings.of(context).open_weather_api,
        )
      ];
}
