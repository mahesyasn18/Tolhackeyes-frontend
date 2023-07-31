import 'package:flutter/cupertino.dart';
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
                    fontWeight: semiBold, fontSize: 27, color: Colors.green),
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
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "- 23 Km",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 15,
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
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "- 5 Km",
                      style: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 15,
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

    void _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Payment successfull!',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold, color: Colors.green),
            ),
            content: Container(
              height: 250,
              margin: EdgeInsets.only(top: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset('assets/green.gif'),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount Paid',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        'Rp. 32.000',
                        style: secondaryTextStyle,
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
                        'Discount',
                        style: secondaryTextStyle.copyWith(fontSize: 1),
                      ),
                      Text(
                        'Rp. 3200',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        'Rp. 28.800',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Anda telah menghemat Rp. 3200",
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Close'),
              ),
            ],
          );
        },
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
                bottom: 10,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/success');
                },
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
