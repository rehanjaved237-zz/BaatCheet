import 'package:baatcheet/screens/authScreen1.dart';
import 'package:baatcheet/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:baatcheet/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BaatCheet",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.green,
      ),
//      home: HomeScreen(),
    home: SplashScreen()
      //AuthenticationScreen1(),
    );
  }
}