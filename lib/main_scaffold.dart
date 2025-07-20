import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/pages/side_menu_pages/side_menu.dart';
import 'package:f_logistics/router/go_route.dart';
import 'package:f_logistics/util/text_const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'generated/assets.dart';



class MainScaffoldPage extends StatefulWidget {
  final Widget child;
  const MainScaffoldPage({super.key, required this.child});
  static final List<Map<String, dynamic>> tabs = [
    {
      'label': TextConst.bottomBarHome.tr(),
      'iconAsset': Assets.bottomBarHome,
      'name': AppRoute.home.name,
      'path': '/dashboard/home',
    },
    {
      'label': TextConst.bottomBarOrders.tr(),
      'iconAsset': Assets.bottomBarOrders,
      'name': AppRoute.orders.name,
      'path': '/dashboard/orders',
    },

    {
      'label': TextConst.bottomBarAccount.tr(),
      'iconAsset': Assets.bottomBarAccount,
      'name': AppRoute.account.name,
      'path': '/dashboard/account',
    },
  ];

  @override
  State<MainScaffoldPage> createState() => _MainScaffoldPageState();
}

class _MainScaffoldPageState extends State<MainScaffoldPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex(BuildContext context) {
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    final index = MainScaffoldPage.tabs.indexWhere((tab) => location.startsWith(tab['path'] as String));
    return index != -1 ? index : 0;
  }

  bool _isDashboardRoute(BuildContext context) {
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    return MainScaffoldPage.tabs.any((tab) => location.startsWith(tab['path'] as String));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideMenu(),
      body: widget.child,
      bottomNavigationBar: _isDashboardRoute(context)
          ? BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex(context),
        selectedItemColor: AppTheme.primaryGreen,
        selectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(inherit: true),
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
          color: Colors.grey,
          inherit: true,
        ),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          final routeName = MainScaffoldPage.tabs[index]['name']!;
          final currentPath = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
          final targetPath = MainScaffoldPage.tabs[index]['path']!;
          if (currentPath != targetPath) {
            GoRouter.of(context).goNamed(routeName as String,extra: _scaffoldKey);

          }
        },
        items: MainScaffoldPage.tabs.map((tab) {
          final assetPath = tab['iconAsset'] as String;
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              assetPath,
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(AppTheme.bpGrey, BlendMode.srcATop),
            ),
            activeIcon: SvgPicture.asset(
              assetPath,
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(AppTheme.primaryGreen,BlendMode.srcATop),
            ),
            label: tab['label'] as String,
          );
        }).toList(),

      ):null,
    );
  }
}
class ScaffoldKeyProvider extends InheritedWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ScaffoldKeyProvider({
    super.key,
    required this.scaffoldKey,
    required Widget child,
  }) : super(child: child);

  static ScaffoldKeyProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScaffoldKeyProvider>();
  }

  @override
  bool updateShouldNotify(covariant ScaffoldKeyProvider oldWidget) {
    return scaffoldKey != oldWidget.scaffoldKey;
  }
}
