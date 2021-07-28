import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/helpers/dsb_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // statusBarColor: Color(0xFFBB1017),
      // systemNavigationBarColor: Color(0xFFBB1017),
      statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.black,
    ),
  );
  runApp(
    ProviderScope(
      child: DailySillimanBetaApp(),
    ),
  );
}

class DailySillimanBetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Daily Silliman',
      theme: DailySillimanTheme(context).lightTheme,
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
