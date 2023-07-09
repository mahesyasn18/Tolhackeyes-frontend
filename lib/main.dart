import 'package:flutter/material.dart';
import 'package:tolhackeys/Auth/signIn.dart';
import 'package:tolhackeys/Auth/splash.dart';
import 'package:tolhackeys/Home/main.dart';

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
        '/login': (context) => LoginPage(),
        '/home-main': (context) => MyHomePageState(),
      },
    );
  }
}
