import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/remote/di/di_container.dart' as di;
import 'package:f_logistics/remote/providers/auth_provider.dart';
import 'package:f_logistics/router/go_route.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await di.init();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => di.sl<AuthProvider>()),
        ],
        child: EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
            Locale('fr'),
            Locale('es'),
          ],
          path: 'assets/translations',
          startLocale: Platform.localeName.split('_')[0].toLocale(),
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          child:  MyApp(),
        ),
      ),
    )
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = goRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeRoboto,
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,

    );
  }
}

