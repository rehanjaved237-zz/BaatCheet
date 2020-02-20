import 'dart:async';

import 'package:baatcheet/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery. of(context). size. width;
    double _height = MediaQuery. of(context). size. height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: _height*0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: _width*0.4,
                  child: Image(
                    image: AssetImage('assets/images/logoText.png'),
                  ),
                ),
                Container(
                  width: _width*0.5,
                  child: Image(
                    image: AssetImage('assets/images/logoImg.png'),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Bringing connectivity among people",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: _width*0.05,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: _width,
            height: _height * 0.1,
//            color: Colors.yellow,
            child: Text(
              'By ZAR Incop.',
              style: TextStyle(
                fontFamily: 'VarelaRound',
                fontWeight: FontWeight.bold,
                fontSize: _width *0.04
              ),
            ),
          )
        ],
      ),
    );
  }
}
