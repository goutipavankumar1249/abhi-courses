import 'package:flutter/material.dart';
import 'package:frontend/HomePage.dart';
import 'package:frontend/MyHomePage.dart';
import 'package:frontend/login.dart';
//import 'package:frontend/loginpage.dart';
import 'package:frontend/signup.dart';
import 'package:frontend/welcomePage.dart';
//import 'package:frontend/signuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomePage()
    );
  }
}

