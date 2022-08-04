// vege_info
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VegeInfoScreen extends StatefulWidget {
  const VegeInfoScreen({Key? key}) : super(key: key);

  @override
  State<VegeInfoScreen> createState() => _VegeInfoScreenState();
}

class _VegeInfoScreenState extends State<VegeInfoScreen> {
  final List<String> _vegetables = ['Carrots', 'Potato', 'Tomato', 'Onions', 'Broccoli', 'Mushroom', 'Lettuce', 'Capsicum'];
  var SelectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 40,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child:  Text(
                'Vegetable Information',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                width: 350,
                height: 42,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(5, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: DropdownButton(
                  value: SelectedItem,
                  items: _vegetables
                      .map((vegetable) => DropdownMenuItem(
                            value: vegetable,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(vegetable),
                            ),
                          ))
                      .toList(),
                  onChanged: (vegetable) {
                    setState(() {
                      SelectedItem = vegetable;
                    });
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey[600]),
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
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
                  child: Column(
                    children: [
                       Padding(
                        padding: EdgeInsets.all(8.0),
                        child:  Text(
                          'Quantity',
                          style:  TextStyle(fontSize: 15,color: Colors.grey[600]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
                  child: Column(
                    children: [
                       Padding(
                        padding: EdgeInsets.all(8.0),
                        child:  Text(
                          'Freshness',
                          style: TextStyle(fontSize: 15,color: Colors.grey[600]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
                  child: Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Text(
                          'Ripeness',
                          style: TextStyle(fontSize: 15,color: Colors.grey[600]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 75,),
            Center(
              child: Text('Rate Per Kg 40 \u{20B9}',style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text('Amount 120\u{20B9}',style: TextStyle(fontSize: 40,color: Colors.grey[600]),),
            ),
            SizedBox(height: 45,),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(color: const Color(0xFF20BCDE), borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        )),

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
