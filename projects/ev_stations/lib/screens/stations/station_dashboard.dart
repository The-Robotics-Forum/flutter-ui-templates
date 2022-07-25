// station_dashboard
import 'package:flutter/material.dart';
import 'package:battery_indicator/battery_indicator.dart';

class StationDashboard extends StatefulWidget {
  const StationDashboard({Key? key}) : super(key: key);

  @override
  State<StationDashboard> createState() => _StationDashboardState();
}

class _StationDashboardState extends State<StationDashboard> {

  final _colorful = true;
  final _showPercentSlide = true;
  final _showPercentNum = false;
  final _size = 40.0;
  final _ratio = 3.0;
  int batteryLevel=75;

  final Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF454545),
      ),
      drawer: const Drawer(),
      backgroundColor: const Color(0xFF454545),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\u{20B9}${'99/Kwh'}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  '3 XPR/kwh',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$batteryLevel %',style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(
                width: 10,
              ),
              BatteryIndicator(
                batteryFromPhone: false,
                batteryLevel: 75,
                style: BatteryIndicatorStyle.skeumorphism,
                colorful: _colorful,
                showPercentNum: _showPercentNum,
                mainColor: _color,
                size: _size,
                ratio: _ratio,
                showPercentSlide: _showPercentSlide,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text('Statistics',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 5.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text('Prediction',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 5.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Request Power',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 5.0,
                    fontWeight: FontWeight.bold,
                  )),
              ),
          ),
        ],
      ),
    );
  }
}
