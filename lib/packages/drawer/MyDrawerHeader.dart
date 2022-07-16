import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      width: double.infinity,
      height: 240,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/TRF.png'),

          radius: 40,
            backgroundColor: Colors.blueGrey,
          ),
          SizedBox(height: 20,),
          const Text(
            "The Robotics Forum",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10,),
          Text(
            "info@theroboticsForum.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}