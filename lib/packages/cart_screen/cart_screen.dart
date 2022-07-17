import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> list = [
    "assets/github.png",
    "assets/instagram.png",
    "assets/linkedin.png",
    "assets/TRF.png",
    "assets/github.png",
    "assets/instagram.png",
    "assets/linkedin.png",
    "assets/TRF.png",
    "assets/instagram.png",
    "assets/linkedin.png",
    "assets/TRF.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: const Color(0xff00BFA5),
          elevation: 10,
          title: const Text("Cart Screen"),
          actions: <Widget>[
            GFIconButton(
              icon: SizedBox(
                height: (MediaQuery.of(context).size.height),
                width: (MediaQuery.of(context).size.width),
                child: LottieBuilder.asset("assets/lottie/cart.json"),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: LottieBuilder.asset("assets/lottie/onlineShopping.json"),
              ),
              ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: const Color(0xffA7FFEB),
                        elevation: 11.0,
                        shadowColor: Colors.black,
                        child: GFListTile(
                            avatar: GFAvatar(child: Image.asset(list[index])),
                            title: Text('Product${index + 1}'),
                            subTitle: Text(list[index]),
                            icon: Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: SizedBox(
                                      child: LottieBuilder.asset("assets/lottie/add-to-cart.json"),
                                    ),
                                    color: Colors.black),
                                const Text('Add to Cart',style: TextStyle(color: Colors.blueAccent),)
                              ],
                            )),
                      ),
                    );
                  }),
            ]));
  }
}
