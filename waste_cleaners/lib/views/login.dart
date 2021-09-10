import 'package:flutter/material.dart';
import 'package:waste_cleaners/views/forgotPassword.dart';
import 'package:waste_cleaners/views/signup.dart';
import 'package:waste_cleaners/views/success.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return   Container(
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
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
      children: [
        SizedBox(height: 20,),
        Text("Welcome Back!",style: TextStyle(
          fontSize:25,
          fontWeight:FontWeight.bold,
        ),),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text("Sign in to your account",style: TextStyle(
            fontSize:15,
            color: Colors.grey.shade500,
          ),),
        ),
        SizedBox(
          height: 100,
        ),
        Row(children: [
          Text("Email",style: TextStyle(
            fontSize:15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        ],),

        Padding(
          padding: const EdgeInsets.only(top:12.0),
          child: Container(
            decoration: BoxDecoration(
color: Colors.grey.shade100,
borderRadius: BorderRadius.circular(13)
            
            ),
            alignment: Alignment.center,
            
            height: 60,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                         border: InputBorder.none,
                    ),
                  ),
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(top:10.0),
           child: Row(children: [
            Text("Password",style: TextStyle(
              fontSize:15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
        ],),
         ),

        Padding(
          padding: const EdgeInsets.only(top:12.0),
          child: Container(
            decoration: BoxDecoration(
color: Colors.grey.shade100,
borderRadius: BorderRadius.circular(13)
            
            ),
            alignment: Alignment.center,
            
            height: 60,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                         border: InputBorder.none,
                    ),
                  ),
            ),
          ),
        ),

Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Row(
  
    mainAxisAlignment: MainAxisAlignment.end,
  
    children: [
  
      InkWell(
        onTap: (){
            showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return ForgotPassword();
                    },
                  );
        },
        child: Text("Forgot Password?",style: TextStyle(
        
          color: Colors.grey.shade500
        
        ),),
      )
  
    ],
  
  ),
),
  SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SuccessScreen()),
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
      );
     
  }
}
