import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:templates/packages/splash_screen/splash.dart';
import 'theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeNotifier(),
    child: Consumer<ThemeNotifier>(
    builder: (context, ThemeNotifier notifier, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: (notifier.darkTheme)! ? dark : light,
        home: const splashScreen(),
      );
    }));
  }
}

