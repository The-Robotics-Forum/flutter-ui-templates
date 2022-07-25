import 'dart:async';
import 'package:ev_stations/screens/users/ChargingProgress.dart';
import 'dart:math' as math;
import 'package:ev_stations/screens/users/scan_qr_code.dart';
import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

import 'charging.dart';
import 'confirming.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var battery = Battery();
  int percentage = 0;
  late Timer timer;

  // created a Batterystate of enum type
  BatteryState batteryState = BatteryState.full;
  late StreamSubscription streamSubscription;

  @override
  void initState() {
    super.initState();
    // calling the method to get battery state
    getBatteryState();

    // calling the method to get battery percentage
    Timer.periodic(const Duration(seconds: 5), (timer) {
      getBatteryPerentage();
    });
  }

  void getBatteryPerentage() async {
    final level = await battery.batteryLevel;
    percentage = level;

    setState(() {});
  }

  // method to know the state of the battery
  void getBatteryState() {
    streamSubscription = battery.onBatteryStateChanged.listen((state) {
      batteryState = state;

      setState(() {});
    });
  }

  Widget BatteryBuild(BatteryState state) {
    switch (state) {
      // first case is for battery full state
      // then it will show green in color
      case BatteryState.full:
        // ignore: sized_box_for_whitespace
        return Transform.rotate(
          angle: 90 * math.pi / 180,
          child: (const Icon(
            Icons.battery_full,
            color: Colors.green,
            size: 75,
          )),
        );

      // Second case is when battery is charging
      // then it will show blue in color
      case BatteryState.charging:

        // ignore: sized_box_for_whitespace
        return Transform.rotate(
          angle: 90 * math.pi / 180,
          child: (const Icon(
            Icons.battery_charging_full,
            color: Colors.blue,
            size: 75,
          )),
        );

      // third case is when the battery is
      // discharged then it will show red in color
      case BatteryState.discharging:
      default:

        // ignore: sized_box_for_whitespace
        return Transform.rotate(
          angle: 90 * math.pi / 180,
          child: (const Icon(
            Icons.battery_alert,
            size: 75,
            color: Colors.red,
          )),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        title: Text(widget.title),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color(0xFF727171),
                  border: Border.all(
                    color: const Color(0xFF20BCDE),
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: const TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Color(0xFF20BCDE),
                              size: 30,
                            ),
                          ),
                          TextSpan(
                              text: '  Wallet',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        '\u{20B9}${'1023.23  |  36 XRP'}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ConfirmingScreen()));
                },
                child: Image.asset('assets/car1.png')),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Tata Nexon EV',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 50,
                      width: (MediaQuery.of(context).size.width / 2) - 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BatteryBuild(batteryState),
                          Text('$percentage Left')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: (MediaQuery.of(context).size.width / 2) - 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        '${percentage * 2} KM Left',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 132,
                  width: (MediaQuery.of(context).size.width / 2) - 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ChargingScreen()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            'assets/car2.jpeg',
                            height: 100,
                          ),
                        ),
                        const Text('Find Charging Station')
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 132,
                    width: (MediaQuery.of(context).size.width / 2) - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Scanner()));
                      },
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.qr_code_scanner,
                              size: 100,
                            ),
                          ),
                          Text('Scan QR Code')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 132,
                    width: (MediaQuery.of(context).size.width / 2) - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.account_balance_wallet,
                              size: 100,
                            ),
                          ),
                          Text('Add Money')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
