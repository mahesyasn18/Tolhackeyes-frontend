import 'package:flutter/material.dart';
import 'package:tolhackeys/Home/top-up/keyboard/konfimasiTopUp.dart';
import 'package:tolhackeys/theme.dart';

import 'model.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({Key? key}) : super(key: key);

  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  TextEditingController _amountController = TextEditingController(text: "");
  late List<List<dynamic>> keys;
  late String amount;

  @override
  void initState() {
    super.initState();
    keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      [
        '.',
        '0',
        const Icon(
          Icons.backspace,
          color: Colors.black,
        )
      ],
    ];
    amount = '';
  }

  onKeyTap(val) {
    if (val == '0' && amount.isEmpty) {
      return;
    }
    setState(() {
      amount = amount + val;
    });
  }

  onBackspacePress() {
    if (amount.isEmpty) {
      return;
    }

    setState(() {
      amount = amount.substring(0, amount.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
            children: x.map(
              (y) {
                return Expanded(
                  child: KeyboardKey(
                    label: y,
                    value: y,
                    onTap: (val) {
                      if (val is Widget) {
                        onBackspacePress();
                      } else {
                        onKeyTap(val);
                      }
                    },
                  ),
                );
              },
            ).toList(),
          ),
        )
        .toList();
  }

  renderAmount() {
    String display = 'Rp0';

    TextStyle style = const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );

    if (amount.isNotEmpty) {
      display = amount;
      style = style.copyWith(
        color: Colors.black,
      );
      _amountController.text = display;
    }

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Masukkan Jumlah Top Up ",
              style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold, fontSize: 17),
            ),
            Center(
              child: TextFormField(
                style:
                    inputTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
                autofocus: true,
                controller: _amountController,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  hintStyle: inputTextStyle.copyWith(
                    fontSize: 20,
                    color: textInput,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  renderConfirmButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: GestureDetector(
        onTap: amount.isNotEmpty
            ? () {
                // Navigate to the destination page and pass the data from _amountController
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KonfirmasiPage(
                      amountData: _amountController.text,
                    ),
                  ),
                );
              }
            : null,
        child: Container(
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: amount.isNotEmpty ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                color: amount.isNotEmpty ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Top Up',
          style: secondaryTextStyle,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              renderAmount(),
              ...renderKeyboard(),
              const SizedBox(
                height: 10,
              ),
              renderConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }
}
