import 'package:flutter/material.dart';
import 'package:tolhackeys/models/infoperjalanan_models.dart';
import 'package:tolhackeys/theme.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    Widget simContent() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 25,
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
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/bg_card_person.png',
                    width: 72,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'Alamat',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'Tempat & Lahir',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'Tinggi',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'Berat',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'No SIM',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        'Berlaku sampai',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' :',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' : ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Ikbal Alghifary',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' Jl. Ciwaruga No 21 ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' Bandung, XXXX ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' 170 cm ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' 58 kg ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' XXXXXXXXXXXXX ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                      Text(
                        ' 23 Mei 2025 ',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Image.asset(
                    'assets/qr.png',
                    width: 56,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Image.asset(
              'assets/barcode.png',
              width: 73,
            )
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

    Widget upperTitle() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'SIM Digital',
          style:
              secondaryTextStyle.copyWith(fontSize: 21, fontWeight: semiBold),
        ),
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
            upperTitle(),
            simContent(),
            SizedBox(
              height: 40,
            ),
            // title(),
          ],
        ),
      ),
    );
  }
}
