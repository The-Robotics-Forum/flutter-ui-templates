import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const Image(image: AssetImage('assets/Pattern2.jpg')),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      color: const Color(0xFFF9A84D).withOpacity(0.2),
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
                  'Confirm Order',
                  style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600, color: const Color(0xFF09051C)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 22),
                child: Container(
                  height: 100,
                  width: 347,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [BoxShadow(color: const Color(0xFF5A6CEA).withOpacity(0.1), blurRadius: 3, spreadRadius: 1, offset: const Offset(2, 3))]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Text(
                              'Deliver To',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xFF3B3B3B)),
                            ),
                          ),
                          const SizedBox(
                            width: 220,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Edit', style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.green)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 15.0, top: 10), child: Image(image: AssetImage('assets/Location.png'))),
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 10),
                              child: SizedBox(
                                  width: 256,
                                  child: Text(
                                    'Vishwakarma Institute of Technology, Pune',
                                    style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xFF09051C)),
                                  ))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 22),
                child: Container(
                  height: 100,
                  width: 347,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [BoxShadow(color: const Color(0xFF5A6CEA).withOpacity(0.1), blurRadius: 3, spreadRadius: 1, offset: const Offset(2, 3))]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Text(
                              'Payment Method',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xFF3B3B3B)),
                            ),
                          ),
                          const SizedBox(
                            width: 165,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Edit', style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.green)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 15.0, top: 10), child: Image(image: AssetImage('assets/paypal.png'))),
                          const SizedBox(
                            width: 80,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '2121 6352 8465 ****',
                                style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500, color: const Color(0xFF09051C)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60,),
              Center(
                child: Container(
                  height: 226,
                  width: 356,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(colors: [
                        Color(0xFF98FB91),
                        Color(0xFF08B118),
                      ])),
                  child: Stack(
                    children: [
                      const Image(image: AssetImage('assets/Pattern3.png')),
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
                                padding: const EdgeInsets.only(left: 12.0, top: 5),
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 57,
                            width: 325,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: GradientText(
                              'Place my Order',
                              gradient: const LinearGradient(colors: [
                                Color(0xFF98FB91),
                                Color(0xFF08B118),
                              ]),
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ],
        ),
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
