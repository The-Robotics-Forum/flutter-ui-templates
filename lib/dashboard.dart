import 'package:flutter/material.dart';
import 'package:templates/packages/drawer/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: appDrawer(),
      body:
          Center(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
