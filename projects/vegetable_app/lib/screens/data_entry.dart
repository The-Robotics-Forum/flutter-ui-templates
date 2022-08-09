import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';


class DataEntryScreen extends StatefulWidget {
  const DataEntryScreen({Key? key}) : super(key: key);

  @override
  State<DataEntryScreen> createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {
  int _count1 = 0;
  int _count2 = 0;

  final controller = CarouselController();
  void increment1() {
    setState(() {
      _count1++;
    });
  }

  void increment2() {
    setState(() {
      _count2++;
    });
  }

  void decrement1() {
    setState(() {
      _count1--;
    });
  }

  void decrement2() {
    setState(() {

      _count2--;
    });
  }
  List<Widget> Card = [
   VegetableCard(),
   VegetableCard(),
   VegetableCard(),
   VegetableCard(),
   VegetableCard(),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Skip',
              style: TextStyle(color: Color(0xFF20BCDE), fontSize: 18),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Hello,Siddhant !',
                style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Enter Number of Vegetables',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: decrement1,
                          icon: (const Icon(
                            Icons.remove,
                            color: Color(0xFF20BCDE),
                          ))),
                      Text(
                        '${_count1}',
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      IconButton(
                          onPressed: increment1,
                          icon: (const Icon(
                            Icons.add,
                            color: Color(0xFF20BCDE),
                          ))),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 45),
                  child: Text(
                    'Enter Number of freezers',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
                Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: decrement2,
                          icon: (const Icon(
                            Icons.remove,
                            color: Color(0xFF20BCDE),
                          ))),
                      Text(
                        '${_count2}',
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      IconButton(
                        onPressed: increment2,
                        icon: (const Icon(
                          Icons.add,
                          color:  Color(0xFF20BCDE),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(top: 10.0,left: 15),
              child: Text('Specify Your Vegetables',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Stack(
                children: [
                  Center(
                      child: CarouselSlider.builder(
                        carouselController: controller,
                        options: CarouselOptions(
                          height: 280,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          }
                        ),
                        itemCount: Card.length,
                        itemBuilder: (context, index, realIndex) {
                          final card = Card[index];
                          return VegetableCard();
                        },
                      )),


                  Positioned(
                      top: 130,
                      left: 25,
                      child: GestureDetector(
                        onTap: (){
                          controller.previousPage(duration: const Duration(milliseconds: 300));
                          setState(() {

                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(50)),
                          child: const Icon(Icons.arrow_back_ios_new),
                        ),
                      )),
                  Positioned(
                    right: 25,
                    top: 130,
                    child: InkWell(
                      onTap: (){
                        controller.nextPage(duration: const Duration(milliseconds: 300));
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(50)),
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),

                ]),
            Center(child: buildIndicator()),
            SizedBox(height: 25,),
            Center(
              child:GestureDetector(
                onTap: (){},
                child: Container(
                  height: 45,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xFF20BCDE),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 22,letterSpacing: 3),),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buildIndicator(){
    return AnimatedSmoothIndicator(activeIndex: activeIndex, count: Card.length,);
  }
}
class VegetableCard extends StatefulWidget {
  const VegetableCard({Key? key}) : super(key: key);

  @override
  State<VegetableCard> createState() => _VegetableCardState();
}

class _VegetableCardState extends State<VegetableCard> {
  List<String> _vegetables = ['Carrots', 'Potato', 'Tomato', 'Onions', 'Broccoli', 'Mushroom', 'Lettuce', 'Capsicum'];
  var SelectedItem;
  @override
  Widget build(BuildContext context) {

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
          children: [
            SizedBox(height: 15,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Container(
                  width: 250,
                  height: 35,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Colors.grey[350],
                  ),
                  child: DropdownButton(
                    value: SelectedItem,
                    items: _vegetables
                        .map((vegetable) =>
                        DropdownMenuItem(
                          value: vegetable,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(vegetable),
                          ),
                        )).toList(),
                    onChanged: (vegetable) {
                      setState(() {
                        SelectedItem = vegetable;
                      });
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.grey[600]),
                    ),
                    isExpanded: true,
                    hint: const Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Select vegetable'),

                    ),
                    underline: const SizedBox(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 35,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[350],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Daily Avg. Production',
                    contentPadding: EdgeInsets.only(top: 1.0),

                  ),
                  cursorHeight: 20,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 35,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[350],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Nickname',
                    contentPadding: EdgeInsets.only(top: 1.0),

                  ),
                  cursorHeight: 20,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
