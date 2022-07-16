import 'package:flutter/material.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  _MyDrawerListState createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new_outlined),
            title: const Text('About us'),
            onTap: (){},
          ),
          Divider(color:Colors.black,),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: const Text('Help'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: const Text('Feedback'),
            onTap: (){},
          ),
          Divider(color: Colors.black,),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: const Text('Exit'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
