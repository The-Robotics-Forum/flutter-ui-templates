import 'package:canteen_app/Screen/Register/registrationScreen.dart';
import 'package:canteen_app/Screen/login_page-II.dart';
import 'package:canteen_app/Screen/set_location_screen.dart';
import 'package:canteen_app/Screen/starter_page.dart';
import 'package:canteen_app/Screen/starter_page.dart';
import 'package:canteen_app/Screen/order_page.dart';
import 'package:canteen_app/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SetLocationScreen(),

    );
  }
}

