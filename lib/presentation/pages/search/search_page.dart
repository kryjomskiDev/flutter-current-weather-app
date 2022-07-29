import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_cubit.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_state.dart';
import 'package:wheather_app/presentation/pages/search/widgets/app_text_input.dart';
import 'package:wheather_app/presentation/pages/search/widgets/error_info.dart';
import 'package:wheather_app/presentation/pages/search/widgets/search_info.dart';
import 'package:wheather_app/presentation/widgets/page_template/page_body_template.dart';
import 'package:wheather_app/presentation/widgets/spinner/app_loading_spinner.dart';

class SearchPage extends StatelessWidget implements AutoRouteWrapper {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SearchPageCubit>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: context.getColors().mainColor,
          elevation: 0,
          title: AppTextInput(onSubmitted: context.read<SearchPageCubit>().getWeatherByCityName),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30.h + kToolbarHeight),
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 10.h,
          ),
          child: BlocBuilder<SearchPageCubit, SearchPageState>(
            builder: _builder,
          ),
        ),
      );

  Widget _builder(BuildContext context, SearchPageState state) => state.maybeWhen(
        loading: () => const AppLoadingSpinner(),
        loaded: (weather) => PageBodyTemplate(
          weather: weather,
          infoWidget: const SearchInfo(),
        ),
        orElse: () => const SizedBox.shrink(),
        error: () => const ErrorInfo(),
      );
}
