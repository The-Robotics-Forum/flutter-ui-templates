import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:templates/packages/Profile_Card/profilecard.dart';
import 'package:templates/packages/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:templates/packages/cart_screen/cart_screen.dart';
import 'package:templates/packages/drawer/drawer.dart';
import 'package:templates/packages/dropdown/dropdown.dart';
import 'package:templates/packages/settings_screen/settings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: appDrawer(),
      body:
          Scaffold(
            backgroundColor: Colors.amberAccent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search Anything',
                        hintStyle: TextStyle(color: Colors.white,fontSize: 17),
                        prefixIcon: IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () { },),
                        suffixIcon: IconButton(icon: Icon(Icons.clear ,color: Colors.white,),onPressed: (){_controller.clear();},),
                       contentPadding: EdgeInsets.all(17),

                      ),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      cursorColor: Colors.white,
                      cursorHeight: 17,
                    ),
                  ),

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
                ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Settings()),
                );}, child: const Text('Settings Screen')),
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
