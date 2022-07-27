import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  final List<ChartData> chartData = [
    ChartData(DateTime(2022, 1), 500),
    ChartData(DateTime(2022, 2), 1000),
    ChartData(DateTime(2022, 3), 1500),
    ChartData(DateTime(2022, 4), 2000),
    ChartData(DateTime(2022, 5), 2500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(onTap: () {}, child: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 15.0),
            child: Text(
              'Statistics',
              style: const TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Visualization of all data Collected',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Text(
                    'Power Consumption',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
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
                  color: Colors.grey[200],
                  alignment: Alignment.topRight,
                  splashColor: Colors.transparent,
                  splashRadius: 1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                          unselectedLabelColor: Colors.white,
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
                            style: TextStyle(color: Colors.white),
                          )),
                          Center(
                            child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                primaryXAxis: DateTimeAxis(
                                  edgeLabelPlacement: EdgeLabelPlacement.none,
                                  labelStyle: const TextStyle(color: Colors.white),
                                  dateFormat: DateFormat.yMMM(),
                                  majorGridLines: const MajorGridLines(width: 0),
                                  axisLine: const AxisLine(width: 1),

                                ),
                                primaryYAxis: NumericAxis(
                                  labelStyle: const TextStyle(color: Colors.white),
                                  labelFormat: '{value}Kwh',
                                  majorGridLines: const MajorGridLines(width: 0),
                                  axisLine: const AxisLine(width: 1),
                                  isVisible: true,
                                ),
                                series: <ChartSeries>[
                                  // Renders line chart
                                  LineSeries<ChartData, DateTime>(
                                      dataSource: chartData, xValueMapper: (ChartData data, _) => data.x, yValueMapper: (ChartData data, _) => data.y)
                                ]),
                          ),
                          const Center(
                            child: Text(
                              'Yearly Data',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Average',
                    style: TextStyle(
                        color: Color(
                          0xFF20BCDE,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_rounded),
                      color: Colors.grey[200],
                      alignment: Alignment.topRight,
                      splashColor: Colors.transparent,
                      splashRadius: 1,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Customers',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '350',
                        style: TextStyle(color: Color(0xFF20BCDE)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Power Consumption',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '1203 Khw',
                        style: TextStyle(color: Color(0xFF20BCDE)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                          width: 80,
                          child: const Center(
                              child: Text(
                            'Time Spent by Customer',
                            style: TextStyle(color: Colors.grey),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '45 min',
                        style: TextStyle(color: Color(0xFF20BCDE)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 100,),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFF20BCDE),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text('Predictions',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 5),),
            ),
          )
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
