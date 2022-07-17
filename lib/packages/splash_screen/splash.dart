import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:templates/packages/login_screen/login.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
          Colors.purpleAccent,
          Colors.amber,
          Colors.blue,
        ]),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            CircleAvatar(
              radius: 75,
              backgroundImage:
              AssetImage('assets/TRF.png'),
              backgroundColor: Colors.transparent,
              ),

            SizedBox(
              height: 25,
            ),
            Text(
              'The Robotics Forum',
              style: TextStyle(

                fontSize: 15,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SpinKitWave(
              color: Colors.grey,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
