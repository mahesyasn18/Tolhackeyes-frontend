import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolhackeys/Home/Transaction/completedPage.dart';
import 'package:tolhackeys/Home/Transaction/inProgressPage.dart';
import 'package:tolhackeys/theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text(
                      'In Progress',
                      style: secondaryTextStyle,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Completed',
                      style: secondaryTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            InProgressPage(),
            completedPage(),
          ],
        ),
      ),
    );
  }
}
