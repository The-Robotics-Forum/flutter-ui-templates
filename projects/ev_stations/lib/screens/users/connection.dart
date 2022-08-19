// connection
import 'dart:async';

import 'package:flutter/material.dart';

import 'ChargingProgress.dart';

class Connection extends StatefulWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ChargingProgress())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF454545),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/charging.jpeg'),
          const Text('Establishing Contact with Car',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

