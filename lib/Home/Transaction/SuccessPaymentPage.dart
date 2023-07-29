import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class SuccessPaymentPage extends StatelessWidget {
  const SuccessPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget signInButton() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                bottom: 30,
                right: 25,
                left: 25,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-main');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Text(
                  "Selesai",
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

    Widget text(int price) {
      String message;
      if (price >= 1000 && price <= 10000) {
        message = "Hore, kamu hemat Rp. $price \nLumayan nih buat beli mie 🍜";
      } else if (price >= 10001 && price <= 20000) {
        message = "Hore, kamu hemat Rp. $price \nLumayan nih buat beli Mixue🍦";
      } else {
        message =
            "Hore, kamu hemat Rp. $price \nLumayan nih buat beli starbucks 🧋";
      }

      return Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        width: double.infinity,
        child: Text(
          message,
          style: primaryTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/d.gif',
                  width: 700,
                  height: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              text(5000),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff393053),
      body: Column(
        children: [
          content(),
          signInButton(),
        ],
      ),
    );
  }
}
