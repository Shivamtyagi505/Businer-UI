import 'dart:ffi';

import 'package:businer/screens/otpscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 40),
                child: Image.asset(
                  'assets/images/medicine.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: ListTile(
                    title: Text(
                      "     find your fit",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF353A85),
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Businness partner',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF353A85),
                            fontWeight: FontWeight.w500)),
                    onTap: () => print("ListTile")),
              ),
              Container(
                child: Text(
                  'join the worlds largest business community',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353A85)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Image.asset("assets/images/cartoongroup.png",
                    height: 100, width: 350),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  'already have an account ! signIn',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 82,
              ),
              Container(
                height: 200,
                width: 410,
                decoration: BoxDecoration(
                    color: Color(0xFF353A85),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: FlatButton(
                          color: Color(0xFF353A85),
                          child: Text("Sign up with number",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 410,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.all(20),
                        child: FlatButton(
                          child: Text("sign up with facebook",
                              style: TextStyle(
                                  color: Color(0xFFA6A6A6),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17)),
                          onPressed: () {},
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
