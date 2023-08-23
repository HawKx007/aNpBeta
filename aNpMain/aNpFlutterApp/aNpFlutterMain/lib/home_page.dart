import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: const Color(0xFFE8505B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/profile_photo.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10,),
            Text(
              'Hawk',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 32,),
            Container(
              width : double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE8505B),
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Container()));
                },
                child: Text(
                  'Main Balance',
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
            SizedBox(height: 16,),
            Container(
              width : double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE8505B),
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                },
                child: Text(
                  'Add Funds',
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
            SizedBox(height: 16,),
            Container(
              width : double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE8505B),
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                },
                child: Text(
                  'Transfer Funds',
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
            SizedBox(height: 16,),
            Container(
              width : double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE8505B),
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage()));
                },
                child: Text(
                  'Withdraw Funds',
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
      )
    );
  }
}
