import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget simContent() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        width: 365,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bg_sim.png',
              ),
              fit: BoxFit.cover),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icon_polri.png',
                  width: 37,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Surat Izin Mengemudi',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      '(Driving License)',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 9,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'A',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 17,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Metro Jaya',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Scan Barcode',
            style: secondaryTextStyle.copyWith(fontSize: 20),
          ),
          Image.asset(
            'assets/icon_scanned.png',
            width: 21,
          ),
        ]),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 30,
        ),
        child: Column(
          children: [
            simContent(),
            SizedBox(
              height: 40,
            ),
            title(),
          ],
        ),
      ),
    );
  }
}
