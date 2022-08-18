import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UploadPic extends StatefulWidget {
  const UploadPic({Key? key}) : super(key: key);

  @override
  State<UploadPic> createState() => _UploadPicState();
}

class _UploadPicState extends State<UploadPic> {
  File? image;
  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('failed : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            const Image(image: AssetImage('assets/Pattern2.jpg')),
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
                  padding: EdgeInsets.only(top: 20, left: 22),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      'Upload Your Photo Profile',
                      style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 22),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      'This data will be displayed in your account profile for security',
                      style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                image != null
                    ? Column(
                        children: [
                          Stack(
                            children: [
                              image != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 64),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 260,
                                        width: 261,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Center(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(22.0),
                                            child: Image.file(
                                              image!,
                                              width: 261,
                                              height: 260,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ))
                                  : Padding(
                                      padding: const EdgeInsets.only(left: 64),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 260,
                                        width: 261,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Center(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(22.0),
                                            child: const Image(
                                              image: AssetImage('assets/ProfilePic.png'),
                                              width: 261,
                                              height: 260,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                              Positioned(
                                right: 10,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 64.0, top: 25),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        image = null; 
                                      });
                                    },
                                    child: Container(
                                        height: 31,
                                        width: 31,
                                        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(100)),
                                        child: const Center(
                                          child: Text(
                                            'X',
                                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: GestureDetector(
                              onTap: () {
                                getImage(ImageSource.gallery);
                              },
                              child: Container(
                                height: 129,
                                width: 347,
                                decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(22), boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(5, 2),
                                  )
                                ]),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/Gallery.jpg'),
                                      ),
                                      Text(
                                        'From Gallery',
                                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0, top: 20),
                            child: GestureDetector(
                              onTap: () {
                                getImage(ImageSource.camera);
                              },
                              child: Container(
                                height: 129,
                                width: 347,
                                decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(22), boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(5, 2),
                                  )
                                ]),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/camera.jpg'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Take Photo',
                                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      height: 57,
                      width: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(colors: [
                            Color(0xFF98FB91),
                            Color(0xFF08B118),
                          ])),
                      child: Text(
                        'Next',
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
