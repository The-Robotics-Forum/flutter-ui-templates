import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20BCDE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.check_circle,color: Colors.white ,size: 170,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Request Send',
                style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
              ),
            )
          ]
        ),
      ),
    );
  }
}

