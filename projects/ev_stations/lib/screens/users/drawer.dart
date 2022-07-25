// Drawer screen
import 'dart:ui';

import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.all(7),
            width: 45,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: const Color(0xFF20BCDE),
                ),
                borderRadius: BorderRadius.circular(50)),
            child: const Center(
              child: Text(
                'S',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              child: const Text(
                'Below button shows the PopUp Drawer ',
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
          Center(
            child: ElevatedButton(
              child: const Text('Open Drawer'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3.0,
                      sigmaY: 3.0,
                    ),
                    child: SimpleDialog(
                      insetPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      children: [
                        Container(
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SimpleDialogOption(
                                child: InkWell(
                                  onTap: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'Transaction Log',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                  color: Colors.white, height: 1, endIndent: 7),
                              InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: SimpleDialogOption(
                                    child: Text(
                                      'Update Price',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                  color: Colors.white, height: 1, endIndent: 7),
                              InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: SimpleDialogOption(
                                    child: Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                  color: Colors.white, height: 1, endIndent: 7),
                              InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: SimpleDialogOption(
                                    child: Text(
                                      'Log Out',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      backgroundColor: const Color(0xFF454545),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      elevation: 0,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}