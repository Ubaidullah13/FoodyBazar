import 'package:flutter/material.dart';
import 'package:foodybazar/splash.dart';
import 'package:foodybazar/login.dart';
import 'package:foodybazar/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/first': (context) => Login(),
        '/second': (context) => Home(),
      },
    );
  }
}
