import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:waste_cleaners/controller/controllers.dart';
import 'package:waste_cleaners/services/auth_services.dart';
import 'package:waste_cleaners/views/login.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(13)),
                  alignment: Alignment.center,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your first name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Last Name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(13)),
                  alignment: Alignment.center,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your last name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(13)),
                  alignment: Alignment.center,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(13)),
                  alignment: Alignment.center,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text.rich(
                  TextSpan(
                    text: '', // default text style
                    children: [
                      TextSpan(
                          text: "By signing up,I agree to the ",
                          style: TextStyle(fontSize: 15)),
                      WidgetSpan(
                          child: InkWell(
                        onTap: () {},
                        child: Text('Term of use',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green)),
                      )),
                      TextSpan(text: " and", style: TextStyle(fontSize: 15)),
                      WidgetSpan(
                          child: InkWell(
                        onTap: () {},
                        child: Text('Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green)),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                    final String firstName = firstNameController.text.trim();
                    final String lastName = lastNameController.text.trim();
                    final String email = emailController.text.trim();
                    final String password = passwordController.text.trim();

                    if (email.isEmpty) {
                      print("Email is Empty");
                    } else {
                      if (password.isEmpty) {
                        print("Password is Empty");
                      } else {
                        context
                            .read<AuthService>()
                            .signUp(
                              firstName,
                              lastName,
                              email,
                              password,
                            )
                            .then((value) async {
                          User user = FirebaseAuth.instance.currentUser;

                          await FirebaseFirestore.instance
                              .collection("users")
                              .doc(user.uid)
                              .set({
                            'uid': user.uid,
                            'email': email,
                            'password': password,
                          });
                        });
                      }
                    }
                    //                Navigator.push(
                    // context,
                    // MaterialPageRoute(builder: (context) => SuccessScreen()),
                    // );
                    //  setState(() {
                    //                 showSpinner = true;
                    //               });
                    //               try {
                    //                 final newUser =
                    //                 await _auth.createUserWithEmailAndPassword(
                    //                     email: email, password: password);
                    //                 if (newUser != null) {
                    //                   Navigator.push(
                    //                       context,
                    //                       MaterialPageRoute(
                    //                           builder: (context) => SuccessScreen()));
                    //                 }

                    //                 setState(() {
                    //                   showSpinner = false;
                    //                 });
                    //               } catch (e) {
                    //                 print(e);
                    //               }
                  },
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    height: 60,
                    width: 280,
                    child: Text("Sign Up"),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text.rich(
                  TextSpan(
                    text: '', // default text style
                    children: [
                      TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(fontSize: 15)),
                      WidgetSpan(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Login();
                            },
                          );
                        },
                        child: Text('Sign in',
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
      ),
    );
  }
}
