import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class KonfirmasiPage extends StatelessWidget {
  final String? amountData;
  const KonfirmasiPage({required this.amountData});

  @override
  Widget build(BuildContext context) {
    Widget contentJumlahTopUp() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jumlah Top Up',
              style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold, fontSize: 15, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Rp ${amountData ?? '0'}',
              style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold, fontSize: 30),
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      );
    }

    Widget rincian() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rincian Top Up',
              style: secondaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 15,
                  color: const Color.fromARGB(255, 99, 99, 99)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jumlah Top Up',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Rp ${amountData ?? '0'}',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biaya Admin',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Gratis',
                  style: secondaryTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 15, color: Colors.green),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Rp ${amountData ?? '0'}',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget confirm() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/password/top-up');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Konfirmasi dan Top Up",
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Rp ${amountData ?? '0'}',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bankOption() {
      return Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  CupertinoIcons.creditcard_fill,
                  color: Colors.cyan,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Bank ABC',
                  style: secondaryTextStyle.copyWith(fontWeight: bold),
                ),
              ],
            ),
            Image.asset(
              'assets/icon_more_circle.png',
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        child: Column(children: [
          bankOption(),
          SizedBox(
            height: 30,
          ),
          confirm(),
        ]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Konfirmasi Top Up',
          style: secondaryTextStyle,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contentJumlahTopUp(),
            rincian(),
            Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}
