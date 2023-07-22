import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:tolhackeys/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleContent() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Getting Started',
              style: secondaryTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Let’s login for explore continues.',
              style: secondaryTextStyle2.copyWith(fontSize: 12),
            ),
          ],
        ),
      );
    }

    Widget emailField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 55,
          right: 25,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'E-mail',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                        validator: EmailValidator(
                            errorText: 'enter a valid email address'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'password is required'),
      MinLengthValidator(8,
          errorText: 'password must be at least 8 digits long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'passwords must have at least one special character')
    ]);

    Widget passwordField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 24,
          right: 25,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.lock_fill,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: inputTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Password',
                        hintStyle: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                      ),
                      validator: (passwordValidator),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                top: 30,
                right: 25,
                left: 25,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-main');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Text(
                  "Sign In",
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

    Widget haveAccount() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          bottom: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgotton your password? ',
              style: buttonSignUpTextStyle.copyWith(
                fontSize: 11,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Reset Password',
                style: LinkTextStyle.copyWith(fontSize: 11, fontWeight: medium),
              ),
            ),
          ],
        ),
      );
    }

    Widget loginOtherWays() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 10),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text("Or continue with"),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 40),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
          ],
        ),
      );
    }

    Widget logoLogin() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_facebook.png',
                width: 30,
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/icon_google.png',
                width: 30,
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/icon_apple.png',
                width: 30,
              ),
            ],
          ),
        ),
      );
    }

    Widget signUp() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: buttonSignUpTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Sign Up',
                style: LinkTextStyle.copyWith(fontSize: 11, fontWeight: medium),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg_1.jpg"), fit: BoxFit.cover),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: 43, top: MediaQuery.of(context).viewPadding.top),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).viewPadding.top,
                    ),
                    Text(
                      "Tolhackeyes",
                      style: primaryTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      "Mari jaga bumi melalui aplikasi kami! ",
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.75,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 21,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleContent(),
                        emailField(),
                        passwordField(),
                        signInButton(),
                        haveAccount(),
                        loginOtherWays(),
                        logoLogin(),
                        signUp(),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
