import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tolhackeys/Widget/notificationTile.dart';
import 'package:tolhackeys/providers/infoperjalanan_provider.dart';
import 'package:tolhackeys/theme.dart';

class ViolationPage extends StatelessWidget {
  const ViolationPage({super.key});

  @override
  Widget build(BuildContext context) {
    infoperjalananProvider infProvider =
        Provider.of<infoperjalananProvider>(context);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 70),
        child: ListView(
          children:
              infProvider.info.map((notif) => NotificationTile(notif)).toList(),
        ),
      ),
    );
  }
}
