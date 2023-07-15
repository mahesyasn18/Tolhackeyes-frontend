import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/image_profile.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Pagi",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        "Mahesya Setia",
                        style: secondaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              CupertinoIcons.bell_fill,
            ),
          ],
        ),
      );
    }

    Widget alertText() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 34,
          ),
          child: Text(
            "Anda terdeteksi berpenumpang tunggal Mohon Gunakan Kendaraan Umum!",
            textAlign: TextAlign.center,
            style: secondaryTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [
                      Color(0xff130CB7),
                      Color.fromARGB(255, 44, 127, 159),
                      //add more color here.
                    ],
                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
          ),
        ),
      );
    }

    Widget contentCard() {
      return Container(
        padding: EdgeInsets.only(top: 26, left: 38, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Saldo Anda',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Rp. 100.000',
              style:
                  primaryTextStyle.copyWith(fontSize: 35, fontWeight: semiBold),
            ),
            Spacer(),
            Text(
              'Bank BRI',
              style: primaryTextStyle.copyWith(fontSize: 15),
            )
          ],
        ),
      );
    }

    Widget cardItem() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
            ),
          ),
          CarouselSlider(
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff130CB7),
                              Color(0xff52E5E7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: contentCard(),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              )),
        ],
      );
    }

    Widget optionMenu() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 32,
          right: 32,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/reward');
              },
              child: Container(
                width: 100,
                height: 74,
                decoration: BoxDecoration(
                  color: Color.fromARGB(58, 129, 60, 241),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/icon_reward.png',
                        width: 30,
                      ),
                      Text(
                        'Rewards',
                        style: secondaryTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              width: 100,
              height: 74,
              decoration: BoxDecoration(
                color: Color.fromARGB(58, 125, 154, 255),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/icon_topup.png',
                      width: 35,
                    ),
                    Text(
                      'Top Up',
                      style: secondaryTextStyle,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              width: 100,
              height: 74,
              decoration: BoxDecoration(
                color: Color.fromARGB(58, 119, 194, 145),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/icon_sim.png',
                      width: 35,
                    ),
                    Text(
                      'SIM Digital',
                      style: secondaryTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget titleTransaction() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 41,
          right: 41,
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction History',
                style: secondaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    'All',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  Icon(CupertinoIcons.chevron_forward)
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget historyTransaction() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 41,
          right: 41,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_history.png',
                      width: 45,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Tol Cikampek',
                      style: secondaryTextStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  '-Rp. 35.000',
                  style: priceMinTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: lineColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_history.png',
                      width: 45,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Tol Jagorawi',
                      style: secondaryTextStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  '-Rp. 35.000',
                  style: priceMinTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: lineColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_history.png',
                      width: 45,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Tol Jagorawi',
                      style: secondaryTextStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  '-Rp. 35.000',
                  style: priceMinTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: lineColor,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        alertText(),
        cardItem(),
        optionMenu(),
        titleTransaction(),
        historyTransaction(),
      ],
    );
  }
}
