import 'package:flutter/material.dart';
import 'package:tolhackeys/Widget/transactionTile.dart';

class InProgressPage extends StatelessWidget {
  const InProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 70),
      child: ListView(
        children: [
          TransactionTile(),
          TransactionTile(),
          TransactionTile(),
          TransactionTile(),
          TransactionTile(),
          TransactionTile(),
        ],
      ),
    );
  }
}
