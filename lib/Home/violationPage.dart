import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class ViolationPage extends StatefulWidget {
  const ViolationPage({super.key});

  @override
  State<ViolationPage> createState() => _ViolationPageState();
}

class _ViolationPageState extends State<ViolationPage> {
  bool isclick = false;

  Widget content(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isclick = true;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 35,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 232, 232),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/icon_price.png",
                        width: 18,
                        color: text == "get" ? Colors.blue : Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text == "get"
                                ? 'Selamat Anda Mendapatkan Reward'
                                : 'Reward Telah digunakan!',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 11,
                              fontWeight:
                                  isclick ? FontWeight.normal : FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            text == "get"
                                ? 'Anda mendapatkan reward 15%'
                                : 'reward 15% yang anda dapatkan sudah digunakan',
                            style: subtitleTextStyle.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Fri"),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      visible: !isclick,
                      child: Image.asset(
                        'assets/icon_circle.png',
                        width: 10,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 70),
        child: ListView(
          children: [
            content("use"),
            content("get"),
          ],
        ),
      ),
    );
  }
}
