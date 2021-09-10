import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
         alignment: Alignment.center,
        height: MediaQuery.of(context).size.height-50,
        width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
    );
  }
}