import 'package:canteen_app/Screen/Register/RegisterChild.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                  width: 380,
                  child: const Center(
                      child:  Image(
                        image:  AssetImage('assets/Pattern.jpg'),
                        height: 715,
                      ))),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        height: 139,
                        width: 175,
                        child: const Image(
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
                    'Sign Up',
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      elevation: 0.5,
                      shadowColor: const Color(0xFF5A6CEA12),
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: LinearGradientMask(
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Name',
                            hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFFF4F4F4),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      elevation: 0.5,
                      shadowColor: const Color(0xFF5A6CEA12),
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: LinearGradientMask(
                              child: const Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Email',
                            hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFFF4F4F4),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      elevation: 0.5,
                      shadowColor: const Color(0xFF5A6CEA12),
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: LinearGradientMask(
                              child: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Contact Number',
                            hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFFF4F4F4),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    padding: const EdgeInsets.only(left: 33, right: 33.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      elevation: 0.5,
                      shadowColor: const Color(0xFF5A6CEA12),
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: LinearGradientMask(
                              child: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            ),
                            suffixIcon: Icon(Icons.visibility,color: Colors.grey,),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFFF4F4F4),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterChild()));
                    },
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
                      child: Text('Create Account', style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){},
                    child: GradientText(
                      'already have an account?',
                      style: GoogleFonts.viga(fontSize: 12, fontWeight: FontWeight.w500),
                      gradient: const LinearGradient(colors: [
                        Color(0xFF98FB91),
                        Color(0xFF08B118),
                      ]),
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

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFFFFFF),
            const Color(0xFF08B118),
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
