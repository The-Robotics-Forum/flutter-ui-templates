// register_user
import 'package:ev_stations/screens/registration/register_station.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF454545),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Text(
                'Hello Siddhant :)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.only(top: 5, left: 35),
                      hintText: 'Car Model',
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.only(top: 5, left: 35),
                      hintText: 'Plug Type',
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const RegisterStation()));
              },
              child: Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF20BCDE),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
