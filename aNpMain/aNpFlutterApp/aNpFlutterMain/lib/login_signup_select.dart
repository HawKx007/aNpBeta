import 'package:aid_nexsus/signin_page.dart';
import 'package:aid_nexsus/signup_page.dart';
import 'package:flutter/material.dart';

class LoginSignupBtnPage extends StatelessWidget {
  static const String path = 'LoginSignupBtnPage';

  const LoginSignupBtnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width : double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE8505B),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                  },
                  child: Text(
                    'Sign-in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Make the button background transparent
                    elevation: 0, // Remove the default button elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width : double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE8505B),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupPage()));
                  },
                  child: Text(
                    'Sign-up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Make the button background transparent
                    elevation: 0, // Remove the default button elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
