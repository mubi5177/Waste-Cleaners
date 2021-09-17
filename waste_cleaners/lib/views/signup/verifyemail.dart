import 'dart:async';


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:waste_cleaners/views/login/login.dart';
import 'package:waste_cleaners/views/signup/success.dart';
 

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

    Timer.periodic(Duration(seconds: 10), (timer) {
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
    return  Container(
           height: 300,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25,),
             color: Colors.white,
           ),
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Row(
                     children: [
                       Container(
                         height: 20,
                         width: 20,
                         child: Image.asset("assets/images/logo.png"),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text("Waste Cleaners",style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),),
                       )
                     ],
                   ),
                 ),
                   Padding(
                         padding: const EdgeInsets.only(top:30.0,left: 12),
                         child: Row(
                           children: [
                             Text("Verify your email",style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 25,
                             ),),
                           ],
                         ),
                       ),
                   Padding(
                         padding: const EdgeInsets.only(top:30.0,left: 12),
                         child: Text("Hi! Verification email has been sent to ${user.email}, please verify your email",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                           color: Colors.grey.shade500
                         ),),
                       ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0),
                            child: ElevatedButton(
                        onPressed: () {
                 showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Login();
                    },
                  );
                        },
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            height: 60,
                            width: 280,
                            child: Text("Continue Login"),
                        )),
                          ),
               ],
             ),
           ),
         );
  }

  Future<void> checkEmailVerified() async {
    user = _auth.currentUser;
    await user.reload();
    if (user.emailVerified) {
      timer.cancel();

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SuccessScreen()));
    }
  }
}
