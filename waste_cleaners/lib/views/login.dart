import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 1.75,
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
                      Text("Welcome",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
                height: 310.2,
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
          ),
        ));
  }
}
