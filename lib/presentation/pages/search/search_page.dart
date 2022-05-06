import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/domain/weather/model/weather.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/generated/l10n.dart';
import 'package:wheather_app/injectable/injectable.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_cubit.dart';
import 'package:wheather_app/presentation/pages/search/cubit/search_page_state.dart';
import 'package:wheather_app/presentation/widgets/cards/weather_info_card.dart';
import 'package:wheather_app/style/app_typography.dart';

class SearchPage extends StatelessWidget implements AutoRouteWrapper {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SearchPageCubit>()..init(),
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
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (weather) => SearchPageBody(weather: weather),
        orElse: () => const SizedBox.shrink(),
      );
}

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({this.weather, Key? key}) : super(key: key);

  final Weather? weather;

  @override
  Widget build(BuildContext context) => weather != null
      ? SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.of(context).current_weather(weather!.locationName),
                style: AppTypography.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              WeatherInfoCard(
                weather: weather,
                showErrorBody: false,
              ),
            ],
          ),
        )
      : Center(
          child: Text(
            'Tap on top to search',
            style: AppTypography.title,
            textAlign: TextAlign.center,
          ),
        );
}

class AppTextInput extends StatefulWidget {
  const AppTextInput({required this.onSubmitted, Key? key}) : super(key: key);

  final void Function(String) onSubmitted;

  @override
  State<AppTextInput> createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  final TextEditingController _textEditingController = TextEditingController();
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _textEditingController.dispose();
    _focusNode.unfocus();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: context.getColors().mainColor,
        ),
        child: TextField(
          focusNode: _focusNode,
          controller: _textEditingController,
          textCapitalization: TextCapitalization.words,
          style: TextStyle(color: context.getColors().white),
          cursorColor: context.getColors().white,
          onSubmitted: _onSubmitted,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            iconColor: context.getColors().white,
            focusColor: context.getColors().white,
            labelText: 'Search',
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            labelStyle: TextStyle(
              color: context.getColors().white,
            ),
            hintStyle: TextStyle(
              fontSize: 15.sp,
              color: context.getColors().white,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0.w,
              vertical: 8.0.h,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: context.getColors().white,
            ),
          ),
        ),
      );

  void _onSubmitted(String text) {
    widget.onSubmitted(text.trim());
    _textEditingController.clear();
    _focusNode.unfocus();
  }
}
