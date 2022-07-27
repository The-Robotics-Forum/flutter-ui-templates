// Statistics
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List itemList = [
    'Jan 2022',
    'Feb 2022',
    'Mar 2022',
    'Apr 2022',
    'May 2022',
    'Jun 2022',
    'Jul 2022',
    'Aug 2022',
    'Sept 2022',
    'Oct 2022',
    'Nov 2022',
    'Dec 2022',
  ];
  String? Selecteditem = 'Feb 2022';

  final dataMap = <String, double>{
    "Feb": 5,
    "Jan": 3,
    "Mar": 2,
    "Apr": 2,
  };



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF454545),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Statistics',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                Text('Visualization of all collected Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ))
              ])),
      backgroundColor: const Color(0xFF454545),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text('Types of EV\'s ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTabController(
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
                      tabs: const [
                        Tab(
                          child: Text(' Weekly',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        Tab(
                          child: Text(' Monthly',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        Tab(
                          child: Text(' Yearly',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      ],
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF20BCDE),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                    dropdownColor: const Color(0xFF727171),
                    value: Selecteditem,
                    items: itemList
                        .map((itemList) => DropdownMenuItem<String>(
                            value: itemList,
                            child: Text(itemList,
                                style: const TextStyle(
                                  color: Colors.white,
                                ))))
                        .toList(),
                    onChanged: (itemList) => setState(() {
                      Selecteditem = itemList;
                    }),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: double.infinity,
                    child: TabBarView(
                      children: [
                        PieChart(PieChartData(
                            centerSpaceRadius: 10,
                            borderData: FlBorderData(show: false),
                            sections: [
                              PieChartSectionData(
                                  value: 10, color: Colors.purple, radius: 100),
                              PieChartSectionData(
                                  value: 20, color: Colors.amber, radius: 110),
                              PieChartSectionData(
                                  value: 30, color: Colors.green, radius: 120)
                            ])),
                        PieChart(PieChartData(
                            centerSpaceRadius: 10,
                            borderData: FlBorderData(show: false),
                            sections: [
                              PieChartSectionData(
                                  value: 10, color: Colors.purple, radius: 100),
                              PieChartSectionData(
                                  value: 20, color: Colors.amber, radius: 110),
                              PieChartSectionData(
                                  value: 30, color: Colors.green, radius: 120)
                            ])),
                        PieChart(PieChartData(
                            centerSpaceRadius: 10,
                            borderData: FlBorderData(show: false),
                            sections: [
                              PieChartSectionData(
                                  value: 10, color: Colors.purple, radius: 100),
                              PieChartSectionData(
                                  value: 20, color: Colors.amber, radius: 110),
                              PieChartSectionData(
                                  value: 30, color: Colors.green, radius: 120)
                            ])),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 35, left: 10, right: 10),
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                  color: const Color(0xFF20BCDE),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Predictions',
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
    );
  }
}
