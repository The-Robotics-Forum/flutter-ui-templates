import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class ChargingProgress extends StatefulWidget {
  const ChargingProgress({Key? key}) : super(key: key);

  @override
  _ChargingProgressState createState() => _ChargingProgressState();
}

class _ChargingProgressState extends State<ChargingProgress> {
  double progressValue = 36.0;
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
            child: Text('1.2 XPR',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          const Center(
            child: Text('0.45 Kwh',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
              height:210,
              width: 210,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    annotations:<GaugeAnnotation>[
                      GaugeAnnotation(
                          positionFactor: 0.1,
                          angle: 90,
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                progressValue.toStringAsFixed(0) ,
                                style: const TextStyle(fontSize: 100,color: Colors.white),
                              ),

                              const Text('%',style: TextStyle(fontSize:30,color: Colors.white),)
                            ],
                          ),

                      )
                    ],

                    pointers:  [

                      RangePointer(
                        value: progressValue,
                        enableAnimation: true,
                        animationDuration: 2000,
                        cornerStyle: CornerStyle.bothCurve,
                        width: 0.07,
                        sizeUnit: GaugeSizeUnit.factor,
                      ),
                      MarkerPointer(
                        value: progressValue,
                        color: const Color(0xFFFFFFFF),
                        markerType: MarkerType.circle,
                        enableAnimation: true,
                        animationDuration: 2000,
                      ),],
                    showLabels: false,
                    showTicks: false,
                    axisLineStyle:const  AxisLineStyle(
                      thickness: 0.07,
                      cornerStyle: CornerStyle.bothFlat,
                      color: Color(0xFF7D7D7D),
                      thicknessUnit: GaugeSizeUnit.factor,
                    ),
                  ),

                ],

              ),
            ),
          ),
          const Center(child: Text('Charging',style:  TextStyle(color: Colors.white,fontSize: 25,),)),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Center(child:  Text('EST',style: TextStyle(color:  Color(0xFF20BCDE),fontSize: 17,),)),
               SizedBox(width: 15,),
               Center(child: Text('30 mins',style: TextStyle(color:  Color(0xFF20BCDE),fontSize: 17),)),
            ],
          ),
          const SizedBox(height: 45,),
          Center(
            child: GestureDetector(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0XFFCD4744),
                  borderRadius: BorderRadius.circular(25)
                ),
                height: 50,
                width: 330,
                child: const Center(child:  Text('STOP',style: TextStyle(color: Colors.white,fontSize: 25,letterSpacing:10),),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
