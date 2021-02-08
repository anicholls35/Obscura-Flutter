import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

//TODO: Link to images
//TODO: Add gesture detection
//TODO: Link to full screen post

class ProfilePosts extends StatelessWidget {
  List<Container> genCells() {
    List<Container> temp = [];
    for (int i = 0; i < 52; i++) {
      temp.add(
        Container(
          decoration: BoxDecoration(
            color: accentColour,
          ),
        ),
      );
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: primaryColour,
        ),
        child: GridView.count(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          crossAxisCount: 4,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: genCells(),
        ));
  }
}
