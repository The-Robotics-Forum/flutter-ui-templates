import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templates/theme.dart';

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
          const Divider(color:Colors.black,),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: const Text('Feedback'),
            onTap: (){},
          ),
          Consumer<ThemeNotifier>(
            builder:(context, notifier, child) =>
                SwitchListTile(
                  title: const Text("Dark Mode"),
                  onChanged:(value){
                    notifier.toggleTheme();
                  } ,
                  value: (notifier.darkTheme)!,
                ),
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
