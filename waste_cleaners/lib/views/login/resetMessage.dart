import 'package:flutter/material.dart';
import 'package:waste_cleaners/views/login.dart';
class ResetMessage extends StatefulWidget {


  @override
  _ResetMessageState createState() => _ResetMessageState();
}

class _ResetMessageState extends State<ResetMessage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Check Your Email for reset password link",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                          child: Text("Continue Login"),
                        )),
                 
                  ],
                ),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 2.69,
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
              // width: MediaQuery.of(context).size.width-50,
            );
  }
}