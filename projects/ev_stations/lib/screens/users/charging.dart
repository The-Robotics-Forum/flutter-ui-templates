// charging
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChargingScreen extends StatefulWidget {
  const ChargingScreen({Key? key}) : super(key: key);

  @override
  _ChargingScreenState createState() => _ChargingScreenState();
}

class _ChargingScreenState extends State<ChargingScreen> {

  List itemList = ['min', 'hour'];
  // ignore: non_constant_identifier_names
  String? Selecteditem = 'min';
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
      body: SingleChildScrollView(
        child: Column(
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
              height: 30,
            ),
            Center(
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(border: Border.all(color: const Color(0xFF20BCDE)), borderRadius: BorderRadius.circular(22)),
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
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '3 XPR/kwh',
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
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
                          TextSpan(text: '  Wallet', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        '\u{20B9}${'1023.23  |  36 XRP'}',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: const Text(
                'I want to charge on the basis',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0xFF727171),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Row(
                            children: const [
                              Icon(Icons.local_gas_station_outlined),
                              Text(' Charger',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ))
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance_wallet_outlined),
                              Text(' Amount',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ))
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: const [
                              Icon(Icons.watch_later_outlined),
                              Text(' Time',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ))
                            ],
                          ),
                        ),
                      ],
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF20BCDE),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: TabBarView(
                      children: [
                        const Center(child: Text('ChargerTab',style: TextStyle(color: Colors.white),)),
                        const Center(child: Text('Amount Tab',style: TextStyle(color: Colors.white),)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                DropdownButton<String>(
                                  dropdownColor: const Color(0xFF727171),

                                  value: Selecteditem,
                                  items: itemList.map((itemList)=>DropdownMenuItem<String>(value:itemList,child: Text(itemList,style:const TextStyle(color:Colors.white,)))).toList(),
                                  onChanged: (itemList) => setState(() {
                                    Selecteditem = itemList;
                                  }),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 300,
                                  height: 32,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF727171)))
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: 30,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF727171),
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54.withOpacity(0.4),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: const Offset(2.0, 5.0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const Center(child: Text('15 min', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: 30,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF727171),
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54.withOpacity(0.4),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: const Offset(2.0, 5.0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const Center(child: Text('15 min', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: 30,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF727171),
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54.withOpacity(0.4),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: const Offset(2.0, 5.0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const Center(child: Text('15 min', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: 30,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF727171),
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54.withOpacity(0.4),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: const Offset(2.0, 5.0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const Center(child: Text('15 min', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 35, left: 10, right: 10),
                height: 50,
                width: 380,
                decoration: BoxDecoration(color: const Color(0xFF20BCDE), borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text('Estimate',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 5.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

