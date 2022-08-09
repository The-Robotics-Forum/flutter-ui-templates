import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Timeline of Vegetable',
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 2
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Icon(Icons.keyboard_arrow_up_outlined),
            ),
    ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 500,
              width: 320,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 150.0,
                        child: TimelineNode(
                          indicator: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TimelineCard(const Color(0xFFEAEAEA), '12 Kg','3 C','0.4','75%', '13:23:23', '12/2/22', Colors.black),
                          ),
                          startConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                          endConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 150.0,
                        child: TimelineNode(
                          indicator: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TimelineCard(const Color(0xFFEAEAEA), '15 Kg','13 C','0.1','95%', '13:23:23', '12/2/22', Colors.black),
                          ),
                          startConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                          endConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 150.0,
                        child: TimelineNode(
                          indicator: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TimelineCard(const Color(0xFFEAEAEA), '20 Kg','23 C','0.8','65%', '13:23:23', '12/2/22', Colors.black),
                          ),
                          startConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                          endConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 150.0,
                        child: TimelineNode(
                          indicator: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TimelineCard(const Color(0xFFEAEAEA), '16 Kg','35 C','0.2','50%', '13:23:23', '12/2/22', Colors.black),
                          ),
                          startConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                          endConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 150.0,
                        child: TimelineNode(
                          indicator: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TimelineCard(const Color(0xFFEAEAEA), '12 Kg','3 C','0.4','75%', '13:23:23', '12/2/22', Colors.black),
                          ),
                          startConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                          endConnector: const SolidLineConnector(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
              height: 7
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class TimelineCard extends StatelessWidget {
  final Color cardcolor;
  final String Quantity;
  final String Temp;
  final String Ripeness;
  final String Freshness;
  final String Time;
  final String Date;
  final Color fontcolor;

  TimelineCard(this.cardcolor, this.Quantity,this.Temp,this.Ripeness,this.Freshness, this.Time, this.Date, this.fontcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: 301,
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Quantity: ${Quantity}',
                      style: TextStyle(color: fontcolor, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Temperature:${Temp}',
                      style: TextStyle(color: fontcolor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 10.0),
                    child: Text(
                      'Ripeness: ${Ripeness}',
                      style: TextStyle(color: fontcolor, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 20.0),
                    child: Text(
                      'Freshness: ${Freshness}',
                      style: TextStyle(color: fontcolor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(text: 'more info', style: TextStyle(color: Color(0xFF20BCDE), fontSize: 10)),
                    WidgetSpan(
                      child: Icon(Icons.arrow_forward, size: 10, color: Color(0xFF20BCDE)),
                    ),
                  ]),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 2),
                    child: Text(
                      '${Date}',
                      style: TextStyle(color: Colors.grey[600], fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 3),
                    child: Text(
                      '${Time}',
                      style: TextStyle(color: Colors.grey[600], fontSize: 10),
                    ),
                  ),
                ],
              ),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                  'Raigad,pune',
                  style: TextStyle(color: Colors.grey[600], fontSize: 10),
              ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
