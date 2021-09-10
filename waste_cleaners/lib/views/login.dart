import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:waste_cleaners/controller/controllers.dart';
import 'package:waste_cleaners/services/auth_services.dart';
import 'package:waste_cleaners/views/forgotPassword.dart';
import 'package:waste_cleaners/views/signup.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 20,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
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
                      controller: emailController,
                       
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
                      controller: passwordController,
                      obscureText: true,
                     
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return ForgotPassword();
                          },
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                   final String email = emailController.text.trim();
                    final String  password = passwordController.text.trim();

                    if (email.isEmpty) {
                      print("Email is Empty");
                    } else {
                      if (password.isEmpty) {
                        print("Password is Empty");
                      } else {
                        context.read<AuthService>().login(
                              email,
                              password,
                            );
                      }
                    }
                    //             Navigator.push(
                    // context,
                    // MaterialPageRoute(builder: (context) => SuccessScreen()),
                    // );

                    //  setState(() {
                    //                     showSpinner = true;
                    //                   });
                    //                   try {
                    //                     final user = await _auth.signInWithEmailAndPassword(
                    //                         email: email, password: password);
                    //                     if (user != null) {
                    //                       Navigator.push(
                    //                           context,
                    //                           MaterialPageRoute(
                    //                               builder: (context) => SuccessScreen()));
                    //                     } else {
                    //                        AlertDialog(
                    //                           title: const Text('AlertDialog Title'),
                    //                           content: const Text('AlertDialog description'),
                    //                           actions: <Widget>[
                    //                             TextButton(
                    //                               onPressed: () =>
                    //                                   Navigator.pop(context, 'Cancel'),
                    //                               child: const Text('Cancel'),
                    //                             ),
                    //                             TextButton(
                    //                               onPressed: () =>
                    //                                   Navigator.pop(context, 'OK'),
                    //                               child: const Text('OK'),
                    //                             ),
                    //                           ],
                    //                         );
                    //                       setState(() {
                    //                       showSpinner = false;
                    //                     });
                    //                     }

                    //                   } catch (e) {
                    //                     print(e);
                    //                   }
                  },
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    height: 60,
                    width: 280,
                    child: Text("Sign In"),
                  )),
              SizedBox(
                height: 100,
              ),
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
      ),
    );
  }
}



// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   TextEditingController emailController = new TextEditingController();
//   TextEditingController passwordController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("LOGIN / SIGN UP"),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 50,),
//               child: TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   hintText: "EMAIL...",
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 50,),
//               child: TextFormField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   hintText: "PASSWORD...",
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             Container(
//               height: 40,
//               width: MediaQuery.of(context).size.width / 3,
//               color: Colors.blue,
//               child: FlatButton(
//                 onPressed: () {
//                   final String email = emailController.text.trim();
//                   final String password = passwordController.text.trim();

//                   if(email.isEmpty){
//                     print("Email is Empty");
//                   } else {
//                     if(password.isEmpty){
//                       print("Password is Empty");
//                     } else {
//                       context.read<AuthService>().login(
//                         email,
//                         password,
//                       );
//                     }
//                   }
//                 },
//                 child: Text("LOG IN"),
//               ),
//             ),
//             Container(
//               height: 40,
//               width: MediaQuery.of(context).size.width / 3,
//               color: Colors.red,
//               child: FlatButton(
//                 onPressed: () {
//                   final String email = emailController.text.trim();
//                   final String password = passwordController.text.trim();

//                   if(email.isEmpty){
//                     print("Email is Empty");
//                   } else {
//                     if(password.isEmpty){
//                       print("Password is Empty");
//                     } else {
//                       context.read<AuthService>().signUp(
//                         email,
//                         password,
//                       ).then((value) async {
//                         User user = FirebaseAuth.instance.currentUser;

//                         await FirebaseFirestore.instance.collection("users").doc(user.uid).set({
//                           'uid': user.uid,
//                           'email': email,
//                           'password': password,
//                         });
//                       });
//                     }
//                   }
//                 },
//                 child: Text("SIGN UP"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }