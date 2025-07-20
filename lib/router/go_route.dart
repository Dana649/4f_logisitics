import 'package:f_logistics/pages/dashboard_pages/account.dart';
import 'package:f_logistics/pages/dashboard_pages/orders.dart';
import 'package:f_logistics/pages/login_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main_scaffold.dart';
import '../pages/dashboard_pages/home_page.dart';
import '../pages/loading/loading_screen.dart';
import '../pages/onboarding_pages/onboarding_page.dart';
import '../pages/onboarding_pages/splash_screen.dart';


enum AppRoute {
  home,
  login,
  account,
  orders,
  landing,
  welcome,
  photoView,
  menuAccounts,
  switching,
  profile,
  payments,
  cryptoPayment,
  bankCardPayment
}
class AppNavigator {
  static void navigatePushTo(BuildContext context, String routeName, {Object? extra}) {
    Navigator.of(context).pop();
    Future.microtask(() {
      if (!context.mounted) return;
      GoRouter.of(context).pushNamed(routeName, extra: extra);
    });
  }

  static void navigateGoTo(BuildContext context, String routeName, {Object? extra}) {
    Navigator.of(context).pop();
    Future.microtask(() {
      if (!context.mounted) return;
      GoRouter.of(context).goNamed(routeName, extra: extra);
    });
  }
}
final GlobalKey<ScaffoldState> _sharedScaffoldKey = GlobalKey<ScaffoldState>();

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/landing',
    redirect: (context, state) {
      final location = state.uri.path;
      final bool authState = true;

      if (!authState && location != '/welcome') return '/welcome';
      if (authState && location == '/landing') return '/dashboard/home';
      return null;
    },
    routes: [
      GoRoute(
        path: '/landing',
        name: AppRoute.landing.name,
        pageBuilder: (context, state) =>
        const NoTransitionPage(child: LandingPage()),
      ),
      GoRoute(
        path: '/welcome',
        name: AppRoute.welcome.name,
        pageBuilder: (context, state) =>
        const NoTransitionPage(child: WelcomingPage()),
      ),
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,
        pageBuilder: (context, state) =>
        const NoTransitionPage(child: LoginPage()),
      ),
      GoRoute(
        path: '/switching',
        name: AppRoute.switching.name,
        pageBuilder: (context, state) =>
        const NoTransitionPage(child: LoadingPage()),
      ),

      /// ✅ This is the important part
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldKeyProvider(
            scaffoldKey: _sharedScaffoldKey,
            child: MainScaffoldPage(child: child),
          );
        },
        routes: [
          GoRoute(
            path: '/dashboard/home',
            name: AppRoute.home.name,
            pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
          ),
          GoRoute(
            path: '/dashboard/orders',
            name: AppRoute.orders.name,
            pageBuilder: (context, state) =>
            const NoTransitionPage(child: OrdersPage()),
          ),
          GoRoute(
            path: '/dashboard/account',
            name: AppRoute.account.name,
            pageBuilder: (context, state) =>
            const NoTransitionPage(child: AccountPage()),
          ),
        ],
      ),
    ],
  );
}
