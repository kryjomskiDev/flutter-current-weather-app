import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_cubit.dart';
import 'package:wheather_app/presentation/pages/location/cubit/location_page_state.dart';
import 'package:wheather_app/presentation/widgets/cards/weather_info_card.dart';
import 'package:wheather_app/style/app_typography.dart';

class LocationPage extends StatelessWidget implements AutoRouteWrapper {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<LocationPageCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
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
        loading: () => Center(
          child: CircularProgressIndicator(color: context.getColors().mainColor),
        ),
        permissionsNotGranted: () => Center(
          child: WeatherInfoCard(
            showErrorBody: true,
            onReloadButtonTap: context.read<LocationPageCubit>().onReloadTap,
          ),
        ),
        loaded: (weather) => _LocationPageBody(weather: weather),
        orElse: () => const SizedBox.shrink(),
      );
}

class _LocationPageBody extends StatelessWidget {
  const _LocationPageBody({required this.weather, Key? key}) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Strings.of(context).current_weather(weather.locationName),
            style: AppTypography.title,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          WeatherInfoCard(
            weather: weather,
            showErrorBody: false,
          ),
        ],
      );
}
