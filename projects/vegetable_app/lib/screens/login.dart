// Login Screen

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        leading: InkWell(onTap: (){},child:  const Icon(Icons.arrow_back,color: Colors.black,)),
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
                'Login',
                style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.0), borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.only(top: 5, left: 35),
                  hintText: 'Enter the Phone No.',
                  hintStyle:  TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 35,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.0), borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.only(top: 5, left: 35),
                  hintText: 'Enter the Password',
                  hintStyle:  TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Text('Please Select Your Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
              height: 75,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400), borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text('Farmer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                      Text('Vegetable Farmer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.465,
                  ),
                  Radio(
                    value: 0,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) => const Color(0xFF20BCDE)),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: 75,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400), borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text('Dealer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                      Text('Vegetable Dealer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.47,
                  ),
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith((states) => const Color(0xFF20BCDE)),

                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=> const ));
              },
              child: Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF20BCDE),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 28),)),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Center(child:  Text('New User?',style: TextStyle(color: Colors.black),),),
                InkWell(onTap:(){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=> const ));
                }, child:const Text(' Register',style:  TextStyle(color:  Color(0xFF20BCDE) ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}