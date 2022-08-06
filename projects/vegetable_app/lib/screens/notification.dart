// notification
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: RichText(
                text: const TextSpan(children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ),
                  TextSpan(text: 'Notification',style: TextStyle(color: Color(0xFF20BCDE),fontSize: 30,fontWeight: FontWeight.w500)),
                ]),
              ),
            ),
          ),
          Container(
            height: 550,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(2, 10), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Transactioncard(Color(0xFF20BCDE),'Mandar- 5Kg','1 min ago','478',Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0,right: 25.0),
                    child: Divider(color: Colors.black,height: 1,),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Transactioncard(Color(0xFF20BCDE),'Raju- 5Kg','1 min ago','478',Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0,right: 25.0),
                    child: Divider(color: Colors.black,height: 1,),
                  ),

                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Transactioncard(Color(0xFFEAEAEA),'Pawan- 92Kg','1 day ago','10,459',Colors.black),
                  ),

                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Requestcard(Color(0xFFEAEAEA),'Karan','1 day ago',Colors.black),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 25.0,right: 25.0),
                    child: Divider(color: Colors.black,height: 1,),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Transactioncard(Color(0xFFEAEAEA),'Raj- 5Kg','1 min ago','478',Colors.black),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Transactioncard extends StatelessWidget {
  final Color cardcolor;
  final String Name;
  final String Time;
  final String Price;
  final Color fontcolor;
  const Transactioncard(this.cardcolor,this.Name,this.Time,this.Price, this.fontcolor);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 90,
      width: 270,
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text('New Transaction',style: TextStyle(color: fontcolor),),
              ),
               Padding(
                padding:  const EdgeInsets.only(left: 10.0,top: 10),
                child: Text('${Name}',style:  TextStyle(color: fontcolor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10),
                child: RichText(
                  text: const TextSpan(children: [

                    TextSpan(text: 'more info',style: TextStyle(color: Color(0xFF20BCDE),fontSize: 10)),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 10, color: Color(0xFF20BCDE)
                      ),
                    ),
                  ]),

                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:   const EdgeInsets.only(right: 25.0,top: 15),
                child: Text('${Time}',style:  TextStyle(color: fontcolor,fontSize: 10),),
              ),
              Padding(
                padding:  const EdgeInsets.only(right: 10.0,top: 25),
                child: Text('${Price} \u{20B9}',style:  TextStyle(color: fontcolor),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
class Requestcard extends StatelessWidget {
  final Color cardcolor;
  final String Name;
  final String Time;

  final Color fontcolor;
  const Requestcard(this.cardcolor,this.Name,this.Time, this.fontcolor);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 90,
      width: 270,
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text('Request Accepted',style: TextStyle(color: fontcolor),),
              ),
              Padding(
                padding:  const EdgeInsets.only(left: 10.0,top: 10),
                child: Text('${Name}',style:  TextStyle(color: fontcolor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10),
                child: RichText(
                  text: const TextSpan(children: [

                    TextSpan(text: 'more info',style: TextStyle(color: Color(0xFF20BCDE),fontSize: 10)),
                    WidgetSpan(
                      child: Icon(
                          Icons.arrow_forward,
                          size: 10, color: Color(0xFF20BCDE)
                      ),
                    ),
                  ]),

                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:   const EdgeInsets.only(right: 25.0,top: 15),
                child: Text('${Time}',style:  TextStyle(color: fontcolor,fontSize: 10),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

