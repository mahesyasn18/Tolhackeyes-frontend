import 'package:flutter/material.dart';
import 'package:tolhackeys/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleContent() {
      return Container(
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
          right: 20,
          left: 20,
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
              decoration: BoxDecoration(
                color: bgInput,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 20,
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
                          ),
                        ),
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

    Widget passwordField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 24,
          right: 20,
          left: 20,
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
              decoration: BoxDecoration(
                color: bgInput,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Password',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
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

    Widget signInButton() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-main');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      24,
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
          right: 20,
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
                'ResetPassword',
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

    Widget buttonSignup() {
      return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
          backgroundColor: bgButtonSignUp,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
        ),
        child: Text(
          "Sign Up",
          style: buttonSignUpTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 10,
          ),
        ),
      );
    }

    Widget signUp() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          bottom: 20,
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
            Container(
              height: 30,
              width: 60,
              child: buttonSignup(),
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
                    horizontal: 32,
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
