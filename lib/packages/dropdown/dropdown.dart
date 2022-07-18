import 'package:flutter/material.dart';
import 'package:templates/packages/cart_screen/cart_screen.dart';
import 'settingPage.dart';
import 'sharePage.dart';
import 'package:templates/packages/login_screen/login.dart';

class DropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Dropdown Page'),
      centerTitle: true,
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: TextTheme().apply(bodyColor: Colors.white),
          ),
          child: PopupMenuButton<int>(
            initialValue: 0,
            color: Colors.indigo,
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text('Login Screen'),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text('Cart Screen'),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text('Share'),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text('Settings'),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Row(
                  children: const [
                    Icon(Icons.logout),
                    SizedBox(width: 8),
                    Text('Sign Out'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CartScreen()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SharePage()),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingPage()),
        );
        break;
      case 4:
        Navigator.pop(context);
    }
  }
}