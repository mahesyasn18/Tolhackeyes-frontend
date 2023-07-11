import 'package:flutter/material.dart';
import 'package:tolhackeys/Widget/transactionTile.dart';

class completedPage extends StatelessWidget {
  const completedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TransactionTile(),
        TransactionTile(),
      ],
    );
  }
}
