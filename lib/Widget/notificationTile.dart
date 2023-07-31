import 'package:flutter/material.dart';
import 'package:tolhackeys/models/infoperjalanan_models.dart';
import 'package:tolhackeys/theme.dart';
import 'package:intl/intl.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile(this.infmodel);

  final infoperjalananModel infmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                        color: Colors.blue,
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
                            'Selamat Anda Mendapatkan Reward',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Anda mendapatkan reward ${infmodel.reward}%',
                            style: subtitleTextStyle.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
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
}
