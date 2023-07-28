import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class RealtimePage extends StatefulWidget {
  const RealtimePage({super.key});

  @override
  State<RealtimePage> createState() => _RealtimePageState();
}

class _RealtimePageState extends State<RealtimePage> {
  @override
  Widget build(BuildContext context) {
    // Widget traffic() {
    //   return Container(child: ,);
    // }

    Widget contentPrice() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'Total bayar di Km 30',
                style: secondaryTextStyle.copyWith(
                    fontWeight: medium, fontSize: 14),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Rp. 32.000',
                style: secondaryTextStyle.copyWith(
                    fontWeight: semiBold, fontSize: 30),
              ),
            ],
          ),
        ),
      );
    }

    Widget contentInformasiPerjalanan() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Perjalanan',
              style: secondaryTextStyle.copyWith(
                  fontSize: 20, fontWeight: semiBold),
            ),
            SizedBox(
              height: 11,
            ),
            Image.asset('assets/tol.png'),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Keluar Tol",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "- 23 Km",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rest Area",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "- 5 Km",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Real Time Perjalanan',
            style: secondaryTextStyle,
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // traffic(),
              contentPrice(),
              contentInformasiPerjalanan(),
            ],
          ),
        ));
  }
}
