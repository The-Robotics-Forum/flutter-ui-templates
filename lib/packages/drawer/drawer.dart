// Drawer screen
import 'package:flutter/material.dart';
import 'package:templates/packages/drawer/MyDrawerHeader.dart';

import 'MyDrawerList.dart';

class appDrawer extends StatefulWidget {
  const appDrawer({Key? key}) : super(key: key);

  @override
  _appDrawerState createState() => _appDrawerState();
}

class _appDrawerState extends State<appDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
                child: Container(
                      child: Column(
                          children: const [
                                MyHeaderDrawer(),
                                MyDrawerList(),
                        ],
                     ),
                ),
            ),
       );
    }
}
