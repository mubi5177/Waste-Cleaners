import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:waste_cleaners/views/screens/dashboard.dart';
 
 


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
         
        home: Dashboard(),
      );
    // );
  }
} 