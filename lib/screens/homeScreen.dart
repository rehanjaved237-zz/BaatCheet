import 'package:baatcheet/widgets/messages.dart';
import 'package:flutter/material.dart';
import 'package:baatcheet/widgets/category.dart';
import 'package:baatcheet/widgets/online.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
              width: 10.0,
              height: 10.0,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/bhalu.jpg'),
              ),
            ),
          ),
          title: Text(
            "BaatCheet"
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Category(),
            Online(),
            MessagesView(),
          ],
        )
      ),
    );
  }
}
