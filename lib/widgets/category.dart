import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentIndex = 1;
  List<String> categories = ['Messages', 'Groups', 'Locations'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Text('Messages', style: TextStyle(
              color: currentIndex == 1 ? Colors.white: Colors.white54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },child: Text('Groups', style: TextStyle(
              color: currentIndex == 2 ? Colors.white: Colors.white54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: Text('Locations', style: TextStyle(
              color: currentIndex == 3 ? Colors.white: Colors.white54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),),
          ),
        ],
      ),

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