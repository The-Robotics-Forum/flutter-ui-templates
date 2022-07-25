// connection
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({Key? key}) : super(key: key);

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
