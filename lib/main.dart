import 'package:ahmed_ali/home.dart';
import 'package:ahmed_ali/login_screen.dart';
import 'package:ahmed_ali/signUpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       Login.id:(context)=>Login(),
       SignUp.id:(context)=>SignUp(),
       home.id:(context)=>home(),
     },
      initialRoute: Login.id,
    );
  }
}
