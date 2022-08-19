import 'package:flutter/material.dart';

class DealerScreen2 extends StatefulWidget {
  const DealerScreen2({Key? key}) : super(key: key);

  @override
  _DealerScreen2State createState() => _DealerScreen2State();
}

class _DealerScreen2State extends State<DealerScreen2> {
  var _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);},child:  Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Skip',
              style: TextStyle(color: Color(0xFF20BCDE)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Text(
                'Add a Dealer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 5),
              child: Text(
                'A person you can deliver vegetable',
                style: TextStyle(color: Color(0xFF20BCDE), fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 100,
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
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage(title: 'Dashboard')));
              },
              child: Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF20BCDE),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Search',style: TextStyle(color: Colors.white,fontSize: 28),),

                      Icon(Icons.search,color: Colors.white,)
                    ],
                  )),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  height: 300,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: const Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                        child: Text(
                          'Name: Avinash Kadu',
                          style: TextStyle(color: Colors.grey[600], fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                        child: Text(
                          'Phone No: 1234-567-890',
                          style: TextStyle(color: Colors.grey[600], fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                        child: Text(
                          'Location: Raigad, Maharashtra',
                          style: TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                        child: Text(
                          'Farmer: New Sanghvi',
                          style: TextStyle(color: Colors.grey[600], fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 22,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(2, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Center(child: Text('Info')),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 22,
                            width: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xFF20BCDE),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(2, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                                  'Connect',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
