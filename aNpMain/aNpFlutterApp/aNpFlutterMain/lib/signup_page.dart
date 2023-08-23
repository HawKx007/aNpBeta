import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        backgroundColor: const Color(0xFFE8505B),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            height: 100,
            width: 100,
            child: SvgPicture.asset(
                'assets/aid_nexus.svg',
                width: 100,
                height: 100,
                semanticsLabel: 'Acme Logo'
            ),
          ),
          SizedBox(height: 32),
          Text(
            'Register Recipient',
            style: TextStyle(
                color: Color(0xFFE8505B),
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter full name',
              filled: true,
              fillColor: Color(0xFFF5F5F5), // Inside color F5F5F5
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Receipient ID',
              filled: true,
              fillColor: Color(0xFFF5F5F5), // Inside color F5F5F5
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select gender',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red),
                ),
                filled: true,
                fillColor: Color(0xFFF5F5F5),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              items: ['Male', 'Female']
                  .map((String gender) => DropdownMenuItem<String>(
                value: gender,
                child: Text(gender),
              ))
                  .toList(),
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Bank Account Number',
              filled: true,
              fillColor: Color(0xFFF5F5F5), // Inside color F5F5F5
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE8505B), // Border color E8505B
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: checkboxValue,
                onChanged: (value) {
                  setState(() {
                    checkboxValue = value ?? false;
                  });
                },
              ),
              Text('I agree to the terms and conditions'),
            ],
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: Text(
                'Sign-up',
                style: TextStyle(
                    color: Colors.white,
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
    );
  }
}
