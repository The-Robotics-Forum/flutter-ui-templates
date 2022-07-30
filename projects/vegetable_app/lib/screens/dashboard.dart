import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late final TabContainerController _controller;
  late TextTheme textTheme;

  @override
  void initState() {
    _controller = TabContainerController(length: 4);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    textTheme = Theme
        .of(context)
        .textTheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Dasboard'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,10,0,10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome Pavan ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height *0.8,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.9,
                child: TabContainer(
                  radius: 20,
                  tabEdge: TabEdge.top,
                  tabCurve: Curves.easeIn,
                  transitionBuilder: (child, animation) {
                    animation = CurvedAnimation(
                        curve: Curves.easeIn, parent: animation);
                    return SlideTransition(
                      position: Tween(
                        begin: const Offset(0.2, 0.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(animation),
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  colors: const <Color>[
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                  ],
                  selectedTextStyle:
                  textTheme.bodyText2?.copyWith(fontSize: 15.0),
                  unselectedTextStyle:
                  textTheme.bodyText2?.copyWith(fontSize: 13.0),
                  tabs: const [
                    'My QR Code',
                    'b','c','d'
                  ],
                  children: [
                    Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const GenerateQR(),
                    ),
                    Container(),
                    Container(),
                    Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class GenerateQR extends StatefulWidget {
  const GenerateQR({Key? key}) : super(key: key);

  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {

  String qrData="https://github.com/ChinmayMunje";
  final qrdataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            QrImage(data: qrData),
            const SizedBox(height: 20),
            const Text("Generate QR Code",style: TextStyle(fontSize: 20),),

            //TextField for input link
            TextField(
              decoration: const InputDecoration(
                  hintText: "Enter your link here..."
              ),
              controller: qrdataFeed,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //Button for generating QR code
              child: ElevatedButton(
                onPressed: () async {
                  if (qrdataFeed.text.isEmpty) {
                    setState(() {
                      qrData = "";
                    });
                  } else {
                    setState(() {
                      qrData = qrdataFeed.text;
                    });
                  }
                },
                child: Text("Generate QR Code",style: TextStyle(color: Colors.indigo[900],),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
