//import 'dart:ui';

import 'package:flutter/material.dart';
import 'intropage.dart';
import 'recipe_card.dart';
//import 'product_card.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb946734),
      body: Center(
        child: Container(
          child: Image.asset('assets/chefly.png', height: 300.0),
        ),
      ),
    );
  }
}
