// select_language
import 'package:flutter/material.dart';
class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  var _value;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 10),
            child: Text(
              'Please select the language',
              style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0,top: 5),
            child: Text(
              'you can change language anytime in profile setting',
              style: TextStyle(color: Color(0xFF20BCDE), fontSize: 13),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: SizedBox(
              height: 250,
              width: 250,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'English',
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Marathi',
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.295,
                          ),
                          Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Hindi',
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.352,
                          ),
                          Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(color: const Color(0xFF20BCDE), borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
