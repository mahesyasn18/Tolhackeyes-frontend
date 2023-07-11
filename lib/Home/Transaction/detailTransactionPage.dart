import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class DetailTransactionPage extends StatelessWidget {
  const DetailTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        height: 370,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GARLY NUGRAHA',
                      style: subtitleTextStyle.copyWith(
                          fontSize: 21, fontWeight: medium),
                    ),
                    Text(
                      'GoPay 0872643843883',
                      style: subtitleTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/image_profile.png',
                  width: 55,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: lineColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp 150.000',
              style: secondaryTextStyle.copyWith(
                  fontSize: 30, fontWeight: semiBold, color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Transaction ID',
              style: subtitleTextStyle.copyWith(fontSize: 14),
            ),
            Text(
              '473626rhwrbvghdvcgy6w',
              style:
                  secondaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'For',
              style: subtitleTextStyle.copyWith(fontSize: 14),
            ),
            Text(
              'Pembayaran TOL Cipali',
              style:
                  secondaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Date and Time',
              style: subtitleTextStyle.copyWith(fontSize: 14),
            ),
            Text(
              '10 July 2023, 08.23 PM',
              style:
                  secondaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget repeatTransactionButton() {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue),
            ),
            height: 55,
            width: MediaQuery.of(context).size.width * 0.5,
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              child: Text(
                "Repeat Transaction",
                style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget shareButton() {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            height: 55,
            width: MediaQuery.of(context).size.width * 0.37,
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon_share.png',
                    color: Colors.white,
                    width: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Share",
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return Container(
        child: Row(
          children: [
            repeatTransactionButton(),
            SizedBox(
              width: 10,
            ),
            shareButton(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Transaction Detail",
          style: secondaryTextStyle.copyWith(fontWeight: semiBold),
        ),
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            content(),
            Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}
