import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BestFarmersScreen extends StatefulWidget {
  const BestFarmersScreen({Key? key}) : super(key: key);

  @override
  State<BestFarmersScreen> createState() => _BestFarmersScreenState();
}

class _BestFarmersScreenState extends State<BestFarmersScreen> {
  final controller = CarouselController();
  int activeIndex = 0;
  List<Widget> Card = [
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
    BestFarmerCard(),
  ];
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Best Farmer',
              style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        Stack(
         children: [
            Center(
                child: CarouselSlider.builder(
                  carouselController: controller,
              options: CarouselOptions(height: 320),
              itemCount: Card.length,
              itemBuilder: (context, index, realIndex) {
                final card = Card[index];
                return BestFarmerCard();
              },
            )),
            Positioned(
                top: 130,
                left: 25,
                child: GestureDetector(
                  onTap: (){
                    controller.previousPage(duration: Duration(seconds: 1));
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                )),
            Positioned(
              right: 25,
              top: 130,
              child: InkWell(
                onTap: (){
                  controller.nextPage(duration: Duration(seconds: 1));
                  setState(() {

                  });
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(50)),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

Widget BestFarmerCard() {
  return Padding(
    padding: const EdgeInsets.all(22.0),
    child: Container(
      height: 300,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(5, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Text(
              'Name: Pavan Bhadane',
              style: TextStyle(color: Colors.grey[600], fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Text(
              'Phone No: 1234-567-890',
              style: TextStyle(color: Colors.grey[600], fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Text(
              'Location: Raigad, Maharashtra',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0),
            child: Text(
              'Farmer: New Sanghvi',
              style: TextStyle(color: Colors.grey[600], fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 22,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(child: Text('Info')),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 22,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF20BCDE),
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(
                    child: Text(
                  'Connect',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          )
        ],
      ),
    ),
  );
}
