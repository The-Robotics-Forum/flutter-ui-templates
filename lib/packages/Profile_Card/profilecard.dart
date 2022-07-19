import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profilecard extends StatefulWidget {
  const Profilecard({Key? key}) : super(key: key);

  @override
  _ProfilecardState createState() => _ProfilecardState();
}

class _ProfilecardState extends State<Profilecard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card'),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF3D3D3D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                Color(0xFF348F50),
                Color(0xFF56B4D3),
              ]),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(children: [
              Positioned(
                top: 10,
                left: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/TRF.png'),
                      radius: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Following',
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '1470',
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Followers',
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '150K',
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 120,
                left: 20,
                child: Text(
                  'UserName | The Robotics Forum',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 150,
                left: 20,
                child: SizedBox(
                  width: 320,
                  child: Text(
                    'About: Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Positioned(
                top: 220,
                left: 20,
                child: Text(
                  'Socials:',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 240,
                left: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          print('Facebook Pressed');
                        },
                        icon: const Icon(Icons.facebook, color: Colors.white)),
                    IconButton(
                        onPressed: () {
                          print('Facebook Pressed');
                        },
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          print('Facebook Pressed');
                        },
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          print('Facebook Pressed');
                        },
                        color: Colors.white,
                        icon: const Icon(
                          FontAwesomeIcons.linkedinIn,
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
