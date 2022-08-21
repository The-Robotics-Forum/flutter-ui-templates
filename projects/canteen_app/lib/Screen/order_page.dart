import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderPageScreen extends StatefulWidget {
  const OrderPageScreen({Key? key}) : super(key: key);

  @override
  State<OrderPageScreen> createState() => _OrderPageScreenState();
}

class _OrderPageScreenState extends State<OrderPageScreen> {
  List<Widget> OrderList = [
    OrderCard(),
    OrderCard(),
    OrderCard(),
    OrderCard(),
    OrderCard(),
    OrderCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(children: [
          Image(image: AssetImage('assets/Pattern2.jpg')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0, left: 22),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF9A84D).withOpacity(0.2),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 17,
                      color: Color(0xFFDA6317),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 22),
                child: Text(
                  'Order details',
                  style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 575,
                child: ListView.builder(
                    itemCount: OrderList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Slidable(
                            endActionPane: ActionPane(
                              motion: StretchMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (context) {
                                    setState(() {
                                      OrderList.remove(OrderList[index]);
                                    });
                                  },
                                  icon: Icons.delete_outline_rounded,
                                  foregroundColor: Colors.white,
                                  label: '',
                                  backgroundColor: Color(0xFFFEAD1D),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(22), bottomRight: Radius.circular(22.0)),
                                ),
                              ],
                            ),
                            child: OrderCard()),
                      );
                    }),
              ),
            ],
          ),
          Positioned(
            bottom: 2,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 206,
                width: 346,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(colors: [
                      Color(0xFF98FB91),
                      Color(0xFF08B118),
                    ])),
                child: Stack(
                  children: [
                    Image(image: AssetImage('assets/Pattern3.png')),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 21),
                              child: Text(
                                'Sub-Total',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 210.0, top: 21),
                              child: Text(
                                '\u{20B9} 597',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,top: 5),
                              child: Text(
                                'Delivary Charge ',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 170.0, top: 5),
                              child: Text(
                                '\u{20B9} 43',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 5),
                              child: Text(
                                'Discount',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 230.0, top: 5),
                              child: Text(
                                '\u{20B9} 19',
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 14),
                              child: Text(
                                'Total',
                                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 220.0, top: 25),
                              child: Text(
                                '\u{20B9} 573',
                                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 47,
                          width: 325,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: GradientText(
                            'Place my Order',
                            gradient:  const LinearGradient(colors: [
                          Color(0xFF98FB91),
                            Color(0xFF08B118),
                            ]),
                            style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400) ,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class OrderCard extends StatefulWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int _count1 = 0;

  void increment() {
    setState(() {
      _count1++;
    });
  }

  void decrement() {
    setState(() {
      _count1--;
    });
  }

  final List _items = ['1', '2', '3'];
  var SelectedItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: 347,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 1, blurRadius: 4, offset: Offset(5, 3))]),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Image(
                image: AssetImage('assets/Menu_Photo.png'),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    'Spacy fresh crab',
                    style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    'Warenik kita',
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3B3B3B)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  width: 100,
                  child: GradientText(
                    '\u{20B9} 199',
                    style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFF3B3B3B)),
                    gradient: const LinearGradient(colors: [
                      Color(0xFF98FB91),
                      Color(0xFF08B118),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Container(
                  width: 102,
                  height: 36,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Color(0xFFF9A84D).withOpacity(0.2),
                  ),
                  child: DropdownButton(
                    value: SelectedItem,
                    items: _items
                        .map((child) => DropdownMenuItem(
                              value: child,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(child),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        SelectedItem = value;
                      });
                    },
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 2.0),
                      child: Icon(Icons.arrow_drop_down, size: 22, color: Color(0xFFDA6317)),
                    ),
                    isExpanded: true,
                    hint: Text(
                      'Select child',
                      style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFFDA6317)),
                    ),
                    underline: const SizedBox(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(colors: [
                          Color(0xFF98FB91),
                          Color(0xFF08B118),
                        ])),
                    child: GestureDetector(
                      onTap: decrement,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${_count1}',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(colors: [
                          Color(0xFF98FB91),
                          Color(0xFF08B118),
                        ])),
                    child: GestureDetector(
                      onTap: increment,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
