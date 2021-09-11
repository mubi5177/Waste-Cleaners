import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:waste_cleaners/services/auth_services.dart';
import 'package:waste_cleaners/views/login.dart';
import 'package:waste_cleaners/views/success.dart';
import 'package:waste_cleaners/views/verifyemail.dart';
import 'package:waste_cleaners/views/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     Provider<AuthService>(
    //       create: (_) => AuthService(FirebaseAuth.instance),
    //     ),
    //     StreamProvider(
    //       create: (context) => context.read<AuthService>().authStateChanges,
    //     ),
    //   ],
      return MaterialApp(
          theme: ThemeData(
        primarySwatch: Colors.green,
      ),
        debugShowCheckedModeBanner: false,
         
        home: Welcome(),
      );
    // );
  }
} 