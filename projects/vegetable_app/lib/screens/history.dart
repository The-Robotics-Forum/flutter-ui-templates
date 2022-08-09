import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            height: 49,
            child: Column(
              children: [
                Container(
                  child: const TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          'Farmer',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Dealer',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color(0xFF20BCDE),
                    unselectedLabelColor: Colors.grey,
                    labelColor: Color(0xFF20BCDE),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
                  children: [
                    Center(
                        child:
                        SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 290,
                                  child: const FarmerHistory(Color(0xFFEAEAEA),'Mandar','3 day ago',Colors.black,'3 Kg','450'),
                                ),

                               const  Padding(
                                  padding:  EdgeInsets.only(left: 55.0,top:15 ,right:55 ,bottom: 15),
                                  child: Divider(height: 1,color: Colors.black),
                                ),

                                Container(
                                  height: 100,
                                  width: 290,
                                  child: const FarmerHistory(Color(0xFFEAEAEA),'Mandar','3 day ago',Colors.black,'5 Kg','450'),
                                ),
                                const  Padding(
                                  padding:  EdgeInsets.only(left: 55.0,top:15 ,right:55 ,bottom: 15),
                                  child: Divider(height: 1,color: Colors.black),
                                ),

                              ] ),
                        )),
                    Center(
                        child:
                        SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 290,
                                  child: DealerHistory(Color(0xFFEAEAEA),'Karan','3 day ago',Colors.black,'3 Kg','450'),
                                ),
                                const  Padding(
                                  padding:  EdgeInsets.only(left: 55.0,top:15 ,right:55 ,bottom: 15),
                                  child: Divider(height: 1,color: Colors.black),
                                ),
                                Container(
                                  height: 100,
                                  width: 290,
                                  child: DealerHistory(Color(0xFFEAEAEA),'Karan','3 day ago',Colors.black,'3 Kg','450'),
                                ),
                                const  Padding(
                                  padding:  EdgeInsets.only(left: 55.0,top:15 ,right:55 ,bottom: 15),
                                  child: Divider(height: 1,color: Colors.black),
                                ),

                              ] ),
                        )),
                  ]
              )
          )
        ],
      ),
    );
  }
}
class FarmerHistory extends StatelessWidget {
  final Color cardcolor;
  final String Name;
  final String Time;
  final String Quantity;
  final String Amount;

  final Color fontcolor;
  const FarmerHistory(this.cardcolor,this.Name,this.Time, this.fontcolor,this.Quantity,this.Amount);

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
                padding:  const EdgeInsets.only(left: 10.0,top: 10),
                child: Text('Farmer Name: ${Name}',style:  TextStyle(color: fontcolor),),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text('Quantity: ${Quantity} ',style: TextStyle(color: fontcolor),),
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
                padding:   const EdgeInsets.only(left: 65.0,top: 15),
                child: Text('${Time}',style:  TextStyle(color: fontcolor,fontSize: 10),),
              ),
              Padding(
                padding:   const EdgeInsets.only(right: 35.0,top: 15),
                child: Text('Amount: ${Amount} \u{20B9}',style:  TextStyle(color: fontcolor),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
class DealerHistory extends StatelessWidget {
  final Color cardcolor;
  final String Name;
  final String Time;
  final String Quantity;
  final String Amount;

  final Color fontcolor;
  const DealerHistory(this.cardcolor,this.Name,this.Time, this.fontcolor,this.Quantity,this.Amount);

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
                padding:  const EdgeInsets.only(left: 10.0,top: 10),
                child: Text('Dealer Name: ${Name}',style:  TextStyle(color: fontcolor),),
              ),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text('Quantity: ${Quantity} ',style: TextStyle(color: fontcolor),),
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
                padding:   const EdgeInsets.only(left: 65.0,top: 15),
                child: Text('${Time}',style:  TextStyle(color: fontcolor,fontSize: 10),),
              ),
              Padding(
                padding:   const EdgeInsets.only(right: 35.0,top: 15),
                child: Text('Amount: ${Amount} \u{20B9}',style:  TextStyle(color: fontcolor),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}