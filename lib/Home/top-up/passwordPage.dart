import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:tolhackeys/theme.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'password is required'),
      MinLengthValidator(8,
          errorText: 'password must be at least 8 digits long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'passwords must have at least one special character')
    ]);
    Widget inputfield() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Masukkan Password ",
              style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold, fontSize: 17),
            ),
            Form(
              key: passwordFormKey,
              child: TextFormField(
                style: inputTextStyle,
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: inputTextStyle.copyWith(
                    fontSize: 14,
                    color: textInput,
                  ),
                ),
                validator: passwordValidator,
              ),
            ),
          ],
        ),
      );
    }

    Widget confirm() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: TextButton(
                onPressed: () {
                  if (passwordFormKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/success/top-up');
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Text(
                  "Confirm",
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Konfirmasi Password',
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
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              inputfield(),
              confirm(),
            ],
          ),
        ),
      ),
    );
  }
}
