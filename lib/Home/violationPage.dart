import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class ViolationPage extends StatelessWidget {
  const ViolationPage({super.key});

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      height: 130,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 233, 232, 232).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(6, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text('20 Aug 2023'),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/example_splash.png",
                    width: 60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kecepatan Kendaraan Terlalu Tinggi!',
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          style: secondaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Kurangi kecepatan anda, Kendaraan anda akan memasukki area TOL',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: subtitleTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.chevron_right),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 70),
        child: ListView(
          children: [
            content(),
            content(),
            content(),
            content(),
            content(),
            content(),
          ],
        ),
      ),
    );
  }
}
