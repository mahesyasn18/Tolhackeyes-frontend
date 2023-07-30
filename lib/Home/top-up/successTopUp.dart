import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class SuccessTopUpPage extends StatelessWidget {
  const SuccessTopUpPage({super.key});

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
              Text(
                "Top Up Berhasil ! \n Silahkan Cek Saldo Anda",
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
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
