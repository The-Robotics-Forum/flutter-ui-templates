import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ClusterMapScreen extends StatefulWidget {
  const ClusterMapScreen({Key? key}) : super(key: key);

  @override
  State<ClusterMapScreen> createState() => _ClusterMapScreenState();
}

class _ClusterMapScreenState extends State<ClusterMapScreen> {
  List<Marker> marker = [
    Marker(
        point: LatLng(20.0051887, 73.7909337),
        builder: (context) => Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
            )),
    Marker(
        point: LatLng(20.00406425761628, 73.78975189122829),
        builder: (context) => Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF20BCDE),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                '1',
                style: TextStyle(color: Colors.white),
              )),
            )),
    Marker(
        point: LatLng(20.007357, 73.792992),
        builder: (context) => Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF20BCDE),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                '2',
                style: TextStyle(color: Colors.white),
              )),
            )),
    Marker(
        point: LatLng(20.006654, 73.789409),
        builder: (context) => Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF20BCDE),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                '3',
                style: TextStyle(color: Colors.white),
              )),
            ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            )),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            'Cluster Graph',
            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            height: 15,
          ),
          Center(
            child: RichText(
              text: const TextSpan(children: [
                WidgetSpan(
                  child: Icon(
                    Icons.circle,
                    color: Color(0xFF20BCDE),
                    size: 20,
                  ),
                ),
                TextSpan(text: 'Farmer', style: TextStyle(color: Colors.grey, fontSize: 20)),
              ]),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: 300,
              height: 430,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(2, 3), // changes position of shadow
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(-2, -3), // changes position of shadow
                  ),
                ],
              ),
              child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(19.997454, 73.789803),
                    zoom: 8,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: (['a', 'b', 'c']),
                    ),
                    MarkerLayerOptions(
                      markers: marker,
                    ),
                  ])),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20,),
                LocationCard('Saraf Bazar,Nashik','20','8 Product in 3Km range',Colors.red), SizedBox(width: 20,),
                LocationCard('Ravivar Karanja,Nashik','35','4 Product in 2Km range',Color(0xFF20BCDE)), SizedBox(width: 20,),
                LocationCard('Panchavati,Nashik','29','8 Product in 5Km range',Color(0xFF20BCDE)), SizedBox(width: 20,),
                LocationCard('Kapad Bazar,Nashik','15','10 Product in 3Km range',Color(0xFF20BCDE)), SizedBox(width: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  final String Place;
  final String Disctance;
  final String Desc;
  final Color MarkerColor;
  const LocationCard(this.Place, this.Disctance, this.Desc, this.MarkerColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 350,
      decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(22.0), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(2, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20),
                child: Text(
                  '${Place}',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20),
                child: Text(
                  '${Desc}',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(color: MarkerColor, borderRadius: BorderRadius.circular(50)),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 40),
                child: Text(
                  ' ${Disctance} km fron factory',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 50),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: 'more info', style: TextStyle(color: Color(0xFF20BCDE), fontSize: 13)),
                    const WidgetSpan(
                      child: Icon(Icons.arrow_forward, size: 10, color: Color(0xFF20BCDE)),
                    ),
                  ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
