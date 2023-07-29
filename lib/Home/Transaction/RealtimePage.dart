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
    Widget traffic() {
      return Container(
        child: Image.asset('assets/chart.png'),
      );
    }

    Widget contentPrice() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 30),
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
                    fontWeight: semiBold, fontSize: 30, color: Colors.green),
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

    Widget payButtpn() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                right: 25,
                left: 25,
                bottom: 30,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 71, 10, 162),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Text(
                  "Pay",
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
              traffic(),
              contentPrice(),
              contentInformasiPerjalanan(),
              Spacer(),
              payButtpn(),
            ],
          ),
        ));
  }
}
