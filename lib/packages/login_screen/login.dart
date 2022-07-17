import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:templates/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void FaceBookclick(){}
  void Googleclick(){}
  void Twitterclick(){}
  void Linkedinclick(){}

  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.purpleAccent,
                    Colors.amber,
                    Colors.blue,
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50,),
              SizedBox(
                height:200,
                width: 300,
                child: LottieBuilder.asset("assets/lottie/login2.json"),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 325,
                height: 470,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Hello",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight:FontWeight.bold
                      ),),
                    const SizedBox(height: 10,),
                    const Text("Please Login to Your Account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: 260,
                      height: 60,
                      child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(FontAwesomeIcons.envelope,color: Colors.red,),
                            labelText: "Email Address",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    SizedBox(
                      width: 260,
                      height: 60,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {

                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          labelText: "Password",
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: const Text("Forget Password",
                              style: TextStyle(
                                  color: Colors.deepOrange
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF8A2387),
                                  Color(0xFFE94057),
                                  Color(0xFFF27121),
                                ])
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Login',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyHomePage(title: 'DashBoard')),
                        );
                      },
                    ),
                    const SizedBox(height: 17 ,),
                    const Text("Or Login using Social Media Account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: FaceBookclick,
                            icon: const Icon(Icons.facebook,
                                color: Colors.blue)
                        ),
                        IconButton(
                            onPressed: Googleclick,
                            icon: const Icon(FontAwesomeIcons.google,color: Colors.redAccent,)
                        ),
                        IconButton(
                            onPressed: Twitterclick,
                            icon: const Icon(FontAwesomeIcons.twitter,color: Colors.orangeAccent,)
                        ),
                        IconButton(
                            onPressed: Linkedinclick,
                            icon: const Icon(FontAwesomeIcons.linkedinIn,color: Colors.green,)
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
