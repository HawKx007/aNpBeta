import 'package:aid_nexsus/splash_screen.dart';
import 'package:flutter/material.dart';

import 'login_signup_select.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application
        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginSignupBtnPage.path: (context) => const SplashScreen(),
      },
      home: const SplashScreen(),
    );
  }
}
