import 'package:canteen_app/Screen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaterPageScreen extends StatefulWidget {
  const StaterPageScreen({Key? key}) : super(key: key);

  @override
  State<StaterPageScreen> createState() => _StaterPageScreenState();
}

class _StaterPageScreenState extends State<StaterPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      bottomNavigationBar: const BottomNavigationBarUI(),
      body: SafeArea(
        child: Stack(children: [
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 22),
                  child: Container(
                      width: 200,
                      child: Text(
                        'Find Your Favorite Food',
                        style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                      )),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(color: const Color(0xFFFAFDFF), borderRadius: BorderRadius.circular(15), boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(5, 2),
                    )
                  ]),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/notifiaction.png'),
                      height: 23,
                      width: 19,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Container(
                    height: 50,
                    width: 287,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: const Color(0xFFCCCCCC).withOpacity(0.15),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: const Color(0xFFCCCCCC).withOpacity(0.15))),
                          focusedBorder: InputBorder.none,
                          hintText: 'What do you want to order?',
                          hintStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xFF939393))),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 49,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9A84D).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/FilterIcon.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Stack(
              children: [
                const Center(child: Image(image: AssetImage('assets/Frame.png'))),
                Positioned(
                    right: 45,
                    top: 32,
                    child: SizedBox(
                        width: 150,
                        child: Text(
                          'Special Deal For June',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 17, color: const Color(0xFF6B3A5B)),
                        ))),
                Positioned(
                    right: 112,
                    top: 100,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 34,
                          width: 87,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1, offset: Offset(5, 2))]),
                          child: Text(
                            'Order now',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 10, color: const Color(0xFF6B3A5B)),
                          )),
                    ))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, top: 8),
                  child: Text(
                    'Popular Menu',
                    style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600, color: const Color(0xFF09051C)),
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View more',
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xFFFF7C32)),
                  ),
                ),
              ],
            ),
            Container(
              height: 215,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: StarterCard(),
                    );
                  }),
            )
          ]),
        ]),
      ),
    );
  }
}

class StarterCard extends StatelessWidget {
  const StarterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: 348,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 5,
          spreadRadius: 2,
          offset: const Offset(5, 2),
        )
      ]),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage('assets/StarterMenu.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text(
                  'Green Noddle',
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600, color: const Color(0xFF09051C)),
                ),
              ),
              Text(
                'Noodle Home',
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xFF3B3B3B)),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Text(
            '\u{20B9} 199',
            style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w400, color: const Color(0xFFFF7C32)),
          )
        ],
      ),
    );
  }
}
