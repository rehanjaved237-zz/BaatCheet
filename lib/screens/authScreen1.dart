import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthenticationScreen1 extends StatefulWidget {
  @override
  _AuthenticationScreen1State createState() => _AuthenticationScreen1State();
}

class _AuthenticationScreen1State extends State<AuthenticationScreen1> {


  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery. of(context). size. width;
    double _height = MediaQuery. of(context). size. height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: _width,
                child: Padding(
                  padding: EdgeInsets.all(_width * 0.04),
                  child: Card(
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: _width * 0.04, left: _width * 0.04, right: _width * 0.04),
                              child: Container(
                                child: Text("Enter mobile no below:",
                                style: TextStyle(
                                  fontSize: _width * 0.07,
                                ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: _width * 0.07),
                              child: Container(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: _width * 0.07,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '03435315898'
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: _width * 0.06, right: _width * 0.5, top: _height * 0.01),
                              child: Container(
                                child: RaisedButton(
                                  onPressed: () => {},
                                  textColor: Colors.white,
                                  color: Colors.green,
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "CONTINUE",
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Container(
                            child: Text('You will receive an OTP in this number.'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(_width * 0.1),
                  child: Image(
                    image: AssetImage('assets/images/duck.png'),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
