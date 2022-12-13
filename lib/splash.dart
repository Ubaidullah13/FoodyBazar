import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: Text('FoodyBazar',
                style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white)),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.red));
  }
}
// //MyHomePage(
//               title: 'Home',
//             )


// void main() {
//   runApp(const MyApp());
// }