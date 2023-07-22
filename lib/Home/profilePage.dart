import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.06),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 232, 232),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/icon_people.png',
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Garly Nugraha",
                      style: secondaryTextStyle.copyWith(
                          fontSize: 17, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_phone.png',
                          width: 14,
                          color: const Color.fromARGB(255, 92, 92, 92),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "+62 82120911510",
                          style: secondaryTextStyle.copyWith(
                              color: const Color.fromARGB(255, 116, 112, 112),
                              fontWeight: light,
                              fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_et.png',
                          width: 14,
                          color: const Color.fromARGB(255, 92, 92, 92),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "garly@gmail.com",
                          style: secondaryTextStyle.copyWith(
                              color: const Color.fromARGB(255, 116, 112, 112),
                              fontWeight: light,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 50,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  shape: BoxShape.circle),
              child: Image.asset(
                'assets/icon_edit.png',
                width: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuTile(String icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                icon,
                width: 25,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: secondaryTextStyle,
              ),
            ],
          ),
          Icon(
            CupertinoIcons.chevron_right,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget titleInformasiUmum() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        "General Information",
        style: secondaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
      ),
    );
  }

  Widget informasiUmum() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.06),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          menuTile("assets/icon_person_circ.png", "Linked Account"),
          Divider(
            color: lineColor,
            thickness: 1,
          ),
          menuTile("assets/icon_faq.png", "FAQ"),
          Divider(
            color: lineColor,
            thickness: 1,
          ),
          menuTile("assets/icon_book.png", "About Apps"),
        ],
      ),
    );
  }

  Widget titlePreferency() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        "Preferences",
        style: secondaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
      ),
    );
  }

  Widget preferences() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.06),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/logo_logout.png',
                width: 25,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Logout",
                style: secondaryTextStyle.copyWith(
                    color: Colors.blue, fontWeight: bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            header(),
            titleInformasiUmum(),
            informasiUmum(),
            titlePreferency(),
            preferences(),
          ],
        ),
      ),
    );
  }
}
