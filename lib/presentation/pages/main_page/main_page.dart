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
  Widget build(BuildContext context) => Scaffold(
        body: AutoRouter(
          key: _routerKey,
        ),
        floatingActionButton: _FloatingActionButton(
            currentIndex: _currentIndex,
            tabsLength: _bottomTabs.length,
            tab: BottomTab(
              const SearchRoute(),
              (context, {required isActive, required onTap}) => _BottomNavigationIcon(
                iconPath: IconsSvg.search,
                isActive: isActive,
                onTap: onTap,
                selectedColor: context.getColors().white,
              ),
            ),
            onSelected: (int index) {
              _routerKey.currentState?.controller?.replace(const SearchRoute());
              setState(() {
                _currentIndex = index;
              });
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
  Widget build(BuildContext context) => BottomAppBar(
      color: context.getColors().white,
      notchMargin: 10.h,
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: kBottomNavigationBarHeight + MediaQuery.of(context).padding.bottom,
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            tabs.length,
            (index) =>
                tabs[index].iconBuilder(context, isActive: currentIndex == index, onTap: () => onSelected(index)),
          ),
        ),
      ));
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    required this.tab,
    required this.currentIndex,
    required this.onSelected,
    required this.tabsLength,
    Key? key,
  }) : super(key: key);
  final BottomTab tab;
  final int currentIndex;
  final Function(int) onSelected;
  final int tabsLength;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.getColors().mainColor,
        ),
        child: tab.iconBuilder(
          context,
          isActive: currentIndex == tabsLength + 1,
          onTap: () => onSelected(tabsLength + 1),
        ),
      );
}

class _BottomNavigationIcon extends StatelessWidget {
  const _BottomNavigationIcon({
    required this.iconPath,
    required this.isActive,
    required this.onTap,
    this.selectedColor,
    Key? key,
  }) : super(key: key);
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;
  final Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath,
        color: isActive ? selectedColor ?? context.getColors().mainColor : context.getColors().black,
        height: 30.h,
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
