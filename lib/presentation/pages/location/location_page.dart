import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_cubit.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';
import 'package:wheather_app/presentation/widgets/cards/weather_info_card.dart';
import 'package:wheather_app/presentation/widgets/page_template/page_body_template.dart';
import 'package:wheather_app/presentation/widgets/spinner/app_loading_spinner.dart';

class LocationPage extends StatelessWidget implements AutoRouteWrapper {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<LocationPageCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 30.h + kToolbarHeight),
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 10.h,
          ),
          child: BlocBuilder<LocationPageCubit, LocationPageState>(
            builder: _builder,
          ),
        ),
      );

  Widget _builder(BuildContext context, LocationPageState state) => state.maybeWhen(
        loading: () => const AppLoadingSpinner(),
        permissionsNotGranted: () => _getPermissionNotGrantedWidget(context),
        loaded: (weather) => PageBodyTemplate(
          weather: weather,
          infoWidget: const SizedBox.shrink(),
        ),
        orElse: () => const SizedBox.shrink(),
      );

  Widget _getPermissionNotGrantedWidget(BuildContext context) => Center(
        child: WeatherInfoCard(
          showErrorBody: true,
          onReloadButtonTap: context.read<LocationPageCubit>().onReloadTap,
        ),
      );
}
