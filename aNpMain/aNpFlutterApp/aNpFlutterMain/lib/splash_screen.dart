import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_signup_select.dart';

class SplashScreen extends StatefulWidget {
  static const String path = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHome();

  }

  void navigateToHome() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginSignupBtnPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: const Color(0xFFE8505B),
        child: Center(
          child: SvgPicture.asset(
              'assets/aid_nexus.svg',
              width: 100,
              height: 100,
              semanticsLabel: 'Acme Logo'
          ),
        ),
      ),
    );
  }
}
