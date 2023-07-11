import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget claimButton() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                  ),
                ),
                child: Text(
                  "Claim",
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/icon_earth.png',
              width: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Reward Unlock',
              style: secondaryTextStyle.copyWith(
                  fontSize: 17, fontWeight: semiBold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/icon_gift.png',
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Selamat',
              style: secondaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 25,
              ),
            ),
            Text(
              'Anda mendapatkan diskon 15%',
              style: secondaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Mari terus berpartisipasi dalam mengurangi junlah kendaaraan',
              textAlign: TextAlign.center,
              style:
                  secondaryTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            ),
            SizedBox(
              height: 10,
            ),
            claimButton(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reward',
          style: secondaryTextStyle,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 21, right: 21, bottom: 30),
        child: content(),
      ),
    );
  }
}
