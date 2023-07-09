import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  Widget scanPage() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, -2),
              blurRadius: 4)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
      ),
      child: FloatingActionButton(
        backgroundColor: Color(0xff539DF3),
        onPressed: () {},
        child: Image.asset(
          'assets/scan.png',
          width: 26,
        ),
      ),
    );
  }

  Widget customButtonNavBar() {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, -2),
                blurRadius: 4)
          ],
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/li_home.png',
                    width: 20,
                    color: Color(0xff539DF3),
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/li_home.png',
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/li_home.png',
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/li_home.png',
                    width: 20,
                  ),
                ),
                label: '',
              ),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: scanPage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNavBar(),
    );
  }
}
