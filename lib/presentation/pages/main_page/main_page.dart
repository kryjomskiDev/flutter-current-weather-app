import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/presentation/router/router.gr.dart';
import 'package:wheather_app/style/images.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<AutoRouterState> _routerKey = GlobalKey<AutoRouterState>();
  int _currentIndex = 0;

  final List<BottomTab> _bottomTabs = [
    BottomTab(
      const LocationRoute(),
      (context, {required isActive, required onTap}) => _BottomNavigationIcon(
        iconPath: IconsSvg.location,
        isActive: isActive,
        onTap: onTap,
      ),
    ),
    BottomTab(
      const SearchRoute(),
      (context, {required isActive, required onTap}) => _BottomNavigationIcon(
        iconPath: IconsSvg.search,
        isActive: isActive,
        onTap: onTap,
      ),
    ),
    BottomTab(
      const SettingsRoute(),
      (context, {required isActive, required onTap}) => _BottomNavigationIcon(
        iconPath: IconsSvg.settings,
        isActive: isActive,
        onTap: onTap,
      ),
    )
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _routerKey.currentState?.controller?.push(_bottomTabs.first.router);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoRouter(
        key: _routerKey,
      ),
      bottomNavigationBar: _BottomNavigationBar(
          tabs: _bottomTabs,
          currentIndex: _currentIndex,
          onSelected: (int index) {
            _routerKey.currentState?.controller?.replace(_bottomTabs[index].router);
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    required this.tabs,
    required this.currentIndex,
    required this.onSelected,
    Key? key,
  }) : super(key: key);
  final List<BottomTab> tabs;
  final void Function(int index) onSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding.bottom;
    return Material(
        child: Container(
      color: context.getColors().mainColor,
      height: kBottomNavigationBarHeight + padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          tabs.length,
          (index) => tabs[index].iconBuilder(context, isActive: currentIndex == index, onTap: () => onSelected(index)),
        ),
      ),
    ));
  }
}

class _BottomNavigationIcon extends StatelessWidget {
  const _BottomNavigationIcon({
    required this.iconPath,
    required this.isActive,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath,
        color: isActive ? context.getColors().black : context.getColors().white,
        height: 26.h,
      ),
    );
  }
}

class BottomTab {
  final PageRouteInfo<dynamic> router;
  final Widget Function(
    BuildContext context, {
    required bool isActive,
    required VoidCallback onTap,
  }) iconBuilder;

  BottomTab(this.router, this.iconBuilder);
}
