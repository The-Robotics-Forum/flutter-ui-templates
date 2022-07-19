import 'package:flutter/material.dart';
import 'package:templates/packages/Profile_Card/profilecard.dart';
import 'package:templates/packages/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:templates/packages/cart_screen/cart_screen.dart';
import 'package:templates/packages/drawer/drawer.dart';
import 'package:templates/packages/dropdown/dropdown.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: appDrawer(),
      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );}, child: Text('Cart Screen')),
                ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavigationBarUI()),
                );}, child: Text('Bottom Navigation Bar')),
                ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DropDown()),
                );}, child: Text('DropDown Menu')),
                ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Profilecard()),
                );}, child: const Text('Profile Card screen')),
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
