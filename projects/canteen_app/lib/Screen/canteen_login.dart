import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CanteenLoginScreen extends StatefulWidget {
  const CanteenLoginScreen({Key? key}) : super(key: key);

  @override
  State<CanteenLoginScreen> createState() => _CanteenLoginScreenState();
}

class _CanteenLoginScreenState extends State<CanteenLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const SizedBox(
                  width: 380,
                  child:  Center(
                      child: Image(
                    image: AssetImage('assets/Pattern.jpg'),
                    height: 715,
                  ))),
              Column(
                children: [
                  const Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 43.0),
                      child: SizedBox(
                        height: 139,
                        width: 175,
                        child:  Image(
                          image: AssetImage('assets/Logo.png'),
                        ),
                      ),
                    ),
                  ),
                  GradientText(
                    'Foodify',
                    style: GoogleFonts.viga(fontSize: 40, fontWeight: FontWeight.w400),
                    gradient: const LinearGradient(colors: [
                      Color(0xFF98FB91),
                      Color(0xFF08B118),
                    ]),
                  ),
                  Text(
                    'Deliever Favorite Food',
                    style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Login To Your Account',
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 57,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(3,5),
                          )
                        ]
                    ),
                    child: Material(
                      elevation: 0.8,
                     
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                          focusedBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.all(15)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 57,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.1),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(3,5),
                        )
                      ]
                    ),
                    child: Material(
                      elevation: 0.8,
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                            focusedBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.all(15)
                        ),
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Or Continue With',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12,color: const Color(0xFF09051C)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                      onTap: (){},
                        child: Container(
                          height: 57,
                          width: 152,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(1, 3)
                              ),
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             const Image(image:  AssetImage('assets/facebook.png'),height: 25,width: 25,),const SizedBox(width: 10,),
                              Text('Facebook',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 21,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 57,
                          width: 152,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(1, 3)
                              ),
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             const Image(image: AssetImage('assets/google.png'),height: 25,width: 25,),const SizedBox(width: 10,),
                              Text('Google',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap:(){},
                    child: GradientText('Forgot Your Password?',
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF98FB91),
                          Color(0xFF08B118),
                        ]
                      ),
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,),),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 57,
                    width: 157,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                            colors: [
                              Color(0xFF98FB91),
                              Color(0xFF08B118),
                            ]
                      )
                    ),
                    child: Text('Login',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,letterSpacing: 2),),
                  )
                ],
              )
            ],
          ),
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
