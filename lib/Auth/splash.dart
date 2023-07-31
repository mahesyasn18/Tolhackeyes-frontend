import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tolhackeys/providers/infoperjalanan_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    getInit();
  }

  getInit() async {
    // Call getinfo to fetch the data
    await Provider.of<infoperjalananProvider>(context, listen: false).getinfo();
    // Print the data in the debug console

    print(Provider.of<infoperjalananProvider>(context, listen: false).info);
    Navigator.pushNamed(context, '/onBoarding');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff443C68),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/LogoTolhackeyes.png'),
            ),
          ),
        ),
      ),
    );
  }
}
