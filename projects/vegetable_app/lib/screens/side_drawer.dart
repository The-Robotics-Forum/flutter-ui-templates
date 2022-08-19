import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF20BCDE),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(top: 20.0, left: 15),
                    child: SizedBox(
                      width: 140,
                      child: Text(
                        'Hello,'
                            'Pavan',
                        style: TextStyle(fontSize: 45, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 35,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 5.0, left: 15),
                child: Text(
                  '+91 1234-5678-90',
                  style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              )
            ],
          ),
          const ListTile(
            title: Padding(
              padding:  EdgeInsets.only(left: 30.0),
              child: Text(
                'My Profile',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const ListTile(
            title: Padding(
              padding:  EdgeInsets.only(left: 30.0),
              child: Text(
                'Current/Pending Contract',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const ListTile(
            title: Padding(
              padding:  EdgeInsets.only(left: 30.0),
              child: Text(
                'Explore New       '
                    'Dealer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const ListTile(
            title: Padding(
              padding:  EdgeInsets.only(left: 30.0),
              child: Text(
                'List of Farmer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
