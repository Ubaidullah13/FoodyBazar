import 'package:flutter/material.dart';
import 'package:foodybazar/splash.dart';
import 'package:foodybazar/login.dart';
import 'package:foodybazar/home.dart';

import 'Restaurant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodyBazar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Splash(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Splash(),
      //   '/login': (context) => Login(),
      //   '/home': (context) => Home(),
      // },
    );
  }
}
