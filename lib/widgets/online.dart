import 'package:baatcheet/classes/Chat.dart';
import 'package:baatcheet/screens/chatScreen.dart';
import 'package:flutter/material.dart';
import 'package:baatcheet/classes/User.dart';

class Online extends StatefulWidget {
  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.blue,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: online.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ChatScreen(user: online[index])),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 32.0,
                      backgroundImage: AssetImage(online[index].imgUrl),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Text(
                      online[index].name,
                      style: TextStyle(
                        color: Colors.blueGrey[90],
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
            );
            Text(online[index].name);
          }),
    );
  }
}

/*ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: categories.length,
itemBuilder: (BuildContext context, int index) {
return Padding(
padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
child: Text(categories[index]),
);
}
),*/
