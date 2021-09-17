import 'package:flutter/material.dart';
import 'package:waste_cleaners/views/login.dart';
import 'package:waste_cleaners/views/signup.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.green,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: Container(
                  height: 150,
                  width: 150,
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
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/images/wclogo.png",
                    ),
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset("assets/gif/giphy.gif",
                        
                        height: 30,
                        width: 30,)
                      ],
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
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
                          child: Text("Sign In"),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text.rich(
                        TextSpan(
                          text: '', // default text style
                          children: [
                            TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(fontSize: 15)),
                            WidgetSpan(
                                child: InkWell(
                              onTap: () {
                                 showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return SignUp();
                    },
                  );
                              },
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.green)),
                            )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              height: 300,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 2.69,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     spreadRadius: 2,
                  //     blurRadius: 3,
                  //     offset: Offset(0, 2), // changes position of shadow
                  //   ),
                  // ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              // width: MediaQuery.of(context).size.width-50,
            )
          ]),
        ));
  }
}
