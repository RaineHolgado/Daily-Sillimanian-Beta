import 'package:daily_sillimanian_beta/screens/startup/startup_pagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: DailySillimanBetaApp()));
}

class DailySillimanBetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Sillimanian Beta',
      theme: ThemeData( // TODO - create custom Theme for the app
        primarySwatch: Colors.blue,
      ),
      home: StartUpPageController(),
    );
  }
}


