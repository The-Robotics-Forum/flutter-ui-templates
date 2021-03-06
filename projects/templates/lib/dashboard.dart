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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          bottom: const TabBar(
        tabs: [
            Tab(text: 'Home',icon: Icon(Icons.home),),
             Tab(text: 'Favorites',icon: Icon(Icons.star),),
             Tab(text: 'Account',icon: Icon(Icons.account_circle_rounded),),

      ],
    ),
        ),

        drawer: const appDrawer(),
        body: TabBarView(

          children: [
            Center(
              child: (Home()),
              ),
             Container(height: double.infinity,width: double.infinity,color: Colors.amberAccent,child: Center(child: Text('Screen 2'))),
            Container(height: double.infinity,width: double.infinity,color: Colors.amberAccent,child: Center(child: Text('Screen 3'))),
          ],
        )
      ),
    );

    }
    // ignore: non_constant_identifier_names
    Widget Home(){
      var _controller = TextEditingController();
    return Scaffold(
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
                hintStyle: const TextStyle(color: Colors.white,fontSize: 17),
                prefixIcon: IconButton(icon: const Icon(Icons.search,color: Colors.white,), onPressed: () { },),
                suffixIcon: IconButton(icon: const Icon(Icons.clear ,color: Colors.white,),onPressed: (){_controller.clear();},),
                contentPadding: const EdgeInsets.all(17),

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
          );}, child: const Text('Cart Screen')),
          ElevatedButton(onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavigationBarUI()),
          );}, child: const Text('Bottom Navigation Bar')),
          ElevatedButton(onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  DropDown()),
          );}, child: const Text('DropDown Menu')),
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
    ); // This trailing comma makes auto-formatting nicer for build methods.

    }
}
