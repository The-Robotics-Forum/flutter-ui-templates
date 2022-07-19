import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';


import '../onboarding/onboarding_screen.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:templates/packages/login_screen/login.dart';
import 'package:page_transition/page_transition.dart';


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
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
        width: double.infinity,
        child: AnimatedSplashScreen(
            splash: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/TRF.png'),
                  radius: 75,
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
              ],
            ),
            nextScreen: const LoginScreen(),
            splashIconSize: 300,
          animationDuration: const Duration(seconds: 1),
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.fade,
          centered: true,

        ),

        );

  }
}
