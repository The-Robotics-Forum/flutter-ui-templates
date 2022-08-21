import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFFFDEA4),
             Color(0xFFFFF2DA),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Image(image: AssetImage('assets/LoginLogo.png')),
              Text(
                'Brand Name',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: const Color(0xFF000000)),
              ),
              Text(
                'Slogan comes here',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 10, color: const Color(0xFF000000)),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 460,
                width: 390,
                decoration: const BoxDecoration(color: Colors.white, borderRadius:  BorderRadius.only(topLeft: Radius.circular(12), topRight:  Radius.circular(12))),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 6,
                        width: 36,
                        decoration: BoxDecoration(color: const Color(0xFF000000), borderRadius: BorderRadius.circular(3)),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 41,
                        width: 322,
                        decoration: BoxDecoration(
                          color: Color(0xFFF9F5F3),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: TabBar(tabs: [
                          Tab(child: Text('Student',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),),
                          Tab(child: Text('Admin',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),),
                        ],
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(2,1)
                              )
                            ]
                          ),
                        ),
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 270,
                        width: 322,
                        child: TabBarView(
                            children: [
                          const LoginItems(),
                          const LoginItems()
                        ]),
                      )


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginItems extends StatelessWidget {
  const LoginItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 53,
            width: 322,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF9F5F3),
            ),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF9F5F3),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                  focusedBorder: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(color: const Color(0xFFA7A5A6), fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 53,
            width: 322,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF9F5F3),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF9F5F3),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                  focusedBorder: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(color: const Color(0xFFA7A5A6), fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220.0,top: 10),
            child: InkWell(
              onTap: (){},
              child: Text(
                'Forgot password?',
                style: GoogleFonts.poppins(color: const Color(0xFFEA1A0E), fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(height: 35,),
          Container(
            height: 53,
            width: 322,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFFC7011),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Text('Login',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
          )
        ],
      ),
    );
  }
}
