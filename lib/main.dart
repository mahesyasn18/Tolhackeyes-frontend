import 'package:flutter/material.dart';
import 'package:tolhackeys/Auth/onboardingPage.dart';
import 'package:tolhackeys/Auth/register.dart';
import 'package:tolhackeys/Auth/signIn.dart';
import 'package:tolhackeys/Auth/splash.dart';
import 'package:tolhackeys/Home/Transaction/RealtimePage.dart';
import 'package:tolhackeys/Home/Transaction/SuccessPaymentPage.dart';
import 'package:tolhackeys/Home/Transaction/detailTransactionPage.dart';
import 'package:tolhackeys/Home/main.dart';
import 'package:tolhackeys/Home/menu/rewardPage.dart';
import 'package:tolhackeys/Home/scanPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onBoarding': (context) => OnBoardingScreenPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home-main': (context) => MyHomePageState(),
        '/detail-transaction': (context) => DetailTransactionPage(),
        '/scan': (context) => ScanPage(),
        '/reward': (context) => RewardPage(),
        '/realtime': (context) => RealtimePage(),
        '/success': (context) => SuccessPaymentPage(),
      },
    );
  }
}
