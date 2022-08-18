import 'package:canteen_app/Screen/Register/upload_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterChild extends StatefulWidget {
  const RegisterChild({Key? key}) : super(key: key);

  @override
  State<RegisterChild> createState() => _RegisterChildState();
}

class _RegisterChildState extends State<RegisterChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              const Image(image: AssetImage('assets/Pattern2.jpg')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, left: 22),
                    child: GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFF9A84D).withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 17,
                          color: Color(0xFFDA6317),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 22),
                    child: Container(
                        width: 150,
                        child: Text(
                          'Add Your Child',
                          style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19.0, left: 22),
                    child: Container(
                        width: 250,
                        child: Text(
                          'This data will be displayed in your account profile for security',
                          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    child: Container(
                      height: 61,
                      width: 347,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red),
                      child: Material(
                        shadowColor: const Color(0xFF5A6CEA12),
                        borderRadius: BorderRadius.circular(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'First Name',
                              hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3B3B3B)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF4F4F4),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    child: Container(
                      height: 61,
                      width: 347,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red),
                      child: Material(
                        shadowColor: const Color(0xFF5A6CEA12),
                        borderRadius: BorderRadius.circular(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Last Name',
                              hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3B3B3B)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF4F4F4),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    child: Container(
                      height: 61,
                      width: 347,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red),
                      child: Material(
                        shadowColor: const Color(0xFF5A6CEA12),
                        borderRadius: BorderRadius.circular(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Age',
                              hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3B3B3B)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF4F4F4),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    child: Container(
                      height: 61,
                      width: 347,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red),
                      child: Material(
                        shadowColor: const Color(0xFF5A6CEA12),
                        borderRadius: BorderRadius.circular(15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Is your child allergic to something?',
                              hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3B3B3B)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: const BorderSide(
                                  color: Color(0xFFF4F4F4),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadPic()));
                    },
                    child: Center(
                      child: Container(
                        height: 57,
                        width: 160,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const  LinearGradient(
                                colors:[
                                  Color(0xFF98FB91),
                                  Color(0xFF08B118),
                                ]
                            )
                        ),
                        child: Text('Next', style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
