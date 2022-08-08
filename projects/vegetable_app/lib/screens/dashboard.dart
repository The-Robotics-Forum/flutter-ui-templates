import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:vegetable_app/screens/qr_code_scanner.dart';
import 'package:vegetable_app/screens/statistics_screen.dart';

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
      drawer:Drawer(),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.doorbell_outlined))],
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
                'Welcome Pavan',
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
                    'Scan','History','Graph'
                  ],
                  children: [
                    Center(
                      child: Container(
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset('assets/img.png')
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Scanner(),
                    ),
                    Container(),
                    Statistics(),
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

