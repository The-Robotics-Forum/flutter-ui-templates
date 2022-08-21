import 'package:canteen_app/Screen/starter_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationBarUI extends StatefulWidget {
  const BottomNavigationBarUI({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarUI> createState() => _BottomNavigationBarUIState();
}

class _BottomNavigationBarUIState extends State<BottomNavigationBarUI> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [

          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.green,
            unselectedColor: Colors.green,


          ),



          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Account"),
              selectedColor: Colors.green,
              unselectedColor: Colors.green

          ),


          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text("Cart"),
              selectedColor: Colors.green,
              unselectedColor: Colors.green
          ),


          SalomonBottomBarItem(
            icon: const Icon(Icons.sms),
            title: const Text("Chats"),
              selectedColor: Colors.green,
              unselectedColor: Colors.green
          ),
        ],

    );
  }
}
