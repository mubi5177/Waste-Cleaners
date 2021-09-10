import 'package:flutter/material.dart';
import 'package:waste_cleaners/views/login.dart';
import 'package:waste_cleaners/views/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner:false,
      
      theme: ThemeData(
       
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}
 class MyHomePage extends StatefulWidget {
 
 
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Welcome(),
       
     );
   }
 }