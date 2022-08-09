import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  final List<ChartData> chartData = [
    ChartData(DateTime(2022, 1), 500),
    ChartData(DateTime(2022, 2), 1000),
    ChartData(DateTime(2022, 3), 1500),
    ChartData(DateTime(2022, 4), 2000),
    ChartData(DateTime(2022, 5), 2500),
  ];

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
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text(
                'Money Collection',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt_rounded),
              color: Colors.black,
              alignment: Alignment.topRight,
              splashColor: Colors.transparent,
              splashRadius: 1,
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 50,
                    width: 220,
                    child: const TabBar(
                      labelColor: Color(0xFF20BCDE),
                      indicatorSize: TabBarIndicatorSize.label,
                      automaticIndicatorColorAdjustment: true,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(' Weekly',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        Tab(
                          child: Text(' Monthly',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        Tab(
                          child: Text(' Yearly',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 370,
                  child: TabBarView(
                    children: [
                      const Center(
                          child: Text(
                        'Weekly Data',
                        style: TextStyle(color: Colors.black),
                      )),
                      Center(
                        child: SfCartesianChart(
                            plotAreaBorderWidth: 0,
                            primaryXAxis: DateTimeAxis(
                              edgeLabelPlacement: EdgeLabelPlacement.none,
                              labelStyle: const TextStyle(color: Colors.black),
                              dateFormat: DateFormat.yMMM(),
                              majorGridLines: const MajorGridLines(width: 0),
                              axisLine: const AxisLine(width: 1),
                            ),
                            primaryYAxis: NumericAxis(
                              labelStyle: const TextStyle(color: Colors.black),
                              labelFormat: '{value} L',
                              majorGridLines: const MajorGridLines(width: 0),
                              axisLine: const AxisLine(width: 1),
                              isVisible: true,
                            ),
                            series: <ChartSeries>[
                              // Renders line chart
                              LineSeries<ChartData, DateTime>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y)
                            ]),
                      ),
                      const Center(
                        child: Text(
                          'Yearly Data',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text(
                'Vegetable collected by each Farmer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt_rounded),
              color: Colors.black,
              alignment: Alignment.topRight,
              splashColor: Colors.transparent,
              splashRadius: 1,
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
                  dropdownColor: Colors.white,
                  value: Selecteditem,
                  items: itemList
                      .map((itemList) => DropdownMenuItem<String>(
                          value: itemList,
                          child: Text(itemList,
                              style: const TextStyle(
                                color: Colors.black,
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
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final DateTime x;
  final double y;
}
