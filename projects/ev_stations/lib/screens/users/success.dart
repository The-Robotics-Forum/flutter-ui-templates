// success
import 'package:flutter/material.dart';
class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
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
          height: 30,
        ),
        Center(
          child: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF20BCDE)),
                borderRadius: BorderRadius.circular(22)),
            child: const Center(
              child: Text(
                'Charger Type | CCS4',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
          const Text('Thank You',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),),
          const Text('for using our service',style:  TextStyle(color: Colors.white,fontSize: 15),),
          const SizedBox(height: 30,),
          const Icon(Icons.check_circle,color:  Color(0xFF20BCDE),size: 170,),
          const SizedBox(height: 30,),
          const Text('1.2 XPR',style:  TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),),
          const Text('0.45 Kwh',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
          const SizedBox(height: 30,),
          const Center(child: Text('Money Will be deducted ',style: TextStyle(color: Colors.white,fontSize: 15),)),
          const Center(child:  Text('from Wallet ',style: TextStyle(color: Colors.white,fontSize: 15),)),
      ],
      ),
    );
  }
}
