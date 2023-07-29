import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/Home/historyPage.dart';
import 'package:tolhackeys/Home/homePage.dart';
import 'package:tolhackeys/Home/profilePage.dart';
import 'package:tolhackeys/Home/scanPage.dart';
import 'package:tolhackeys/Home/violationPage.dart';

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key});

  @override
  State<MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> {
  int selectedIndex = 0;

  final List pages = [
    HomePage(),
    HistoryPage(),
    ScanPage(),
    ViolationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[selectedIndex],
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 2 - 28.0,
            child: Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, -2),
                      blurRadius: 4),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buidNavBarItem(0, CupertinoIcons.home, 'Home'),
                  buidNavBarItem(1, CupertinoIcons.time, 'History'),
                  SizedBox(
                    width: 56,
                  ),
                  buidNavBarItem(3, CupertinoIcons.bell, 'Violation'),
                  buidNavBarItem(4, CupertinoIcons.person, 'Profile'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 2 - 28.0,
            child: Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  onItemTapped(2);
                },
                child: Image.asset(
                  'assets/icon_card.png',
                  color: Colors.white,
                  width: 24,
                ),
                backgroundColor: Colors.blue,
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buidNavBarItem(int index, IconData iconData, String label) {
    return GestureDetector(
      onTap: () {
        onItemTapped(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Column(
          children: [
            Icon(
              iconData,
              color: selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              label,
              style: TextStyle(
                color: selectedIndex == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
