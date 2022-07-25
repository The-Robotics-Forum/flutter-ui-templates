// confirming
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'ChargingProgress.dart';
class ConfirmingScreen extends StatefulWidget {
  const ConfirmingScreen({Key? key}) : super(key: key);

  @override
  _ConfirmingScreenState createState() => _ConfirmingScreenState();
}

class _ConfirmingScreenState extends State<ConfirmingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(onTap:(){},child: Icon(Icons.arrow_back)),
        actions: [
          Container(
            margin: const EdgeInsets.all(7),
            width: 45,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: const Color(0xFF20BCDE),
                ),
                borderRadius: BorderRadius.circular(50)),
            child: const Center(
              child: Text(
                'S',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'EV Charging Station',
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: RichText(
              text: const TextSpan(children: [
                WidgetSpan(
                  child: Icon(
                    Icons.location_pin,
                    color: Color(0xFF20BCDE),
                    size: 14,
                  ),
                ),
                TextSpan(text: 'Upper Indira Nagar 666, Pune, Maharashtra'),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(border: Border.all(color: const Color(0xFF20BCDE)), borderRadius: BorderRadius.circular(22)),
              child: const Center(
                child: Text(
                  'Charger Type | CCS4',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text('5 XPR',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
          ),
          const Center(
              child: Text('1.66 Kwh',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))
          ),
          SizedBox(height: 25,),
          Container(
            height: 250,
            width: 300,
            child: Center(
              child:Image.asset('assets/car2.jpeg'),
            ),
          ),
          const SizedBox(height: 55,),
            Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SlideAction(
                height: 55,
                elevation: 0,
                text: 'Slide to Charge',
                alignment: Alignment.center,
                sliderButtonIcon: const Icon(Icons.arrow_forward_ios,color: Color(0xFF20BCDE),),
                outerColor: const Color(0xFF20BCDE),
                onSubmit: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChargingProgress()));
                },
                sliderButtonIconPadding: 8,

              ),
            ),

          )

        ],
      ),
    );
  }
}

