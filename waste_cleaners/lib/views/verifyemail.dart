import 'dart:async';


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:waste_cleaners/views/success.dart';

class VerifyEmail extends StatefulWidget {
  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  Timer timer;
  User user;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    user = _auth.currentUser;
    user.sendEmailVerification();

    Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Text("Verification email has been sent to ${user.email}, please verify your email"))
    );
  }

  Future<void> checkEmailVerified() async {
    user = _auth.currentUser;
    await user.reload();
    if (user.emailVerified) {
      timer.cancel();

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SuccessScreen()));
    }
  }
}
