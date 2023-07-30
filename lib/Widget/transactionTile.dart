import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-transaction');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 123,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(197, 240, 240, 240),
                          borderRadius: BorderRadius.circular(6)),
                      child: Image.asset(
                        'assets/icon_recently.png',
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tol Jagorawi',
                          style: secondaryTextStyle.copyWith(fontSize: 15),
                        ),
                        Text(
                          'Indonesia',
                          style: subtitleTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icon_more.png',
                  width: 16,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(197, 240, 240, 240),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar_today,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '30 Januari 2023',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp. 32.000',
                      style: secondaryTextStyle,
                    ),
                    Text(
                      '- Rp. 3200',
                      style: secondaryTextStyle.copyWith(
                        color: Colors.red,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
