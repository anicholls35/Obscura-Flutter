import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

//TODO: Add gesture detection
//TODO: Link to user account page
//TODO: Pull from data

class FollowingFollowers extends StatelessWidget {
  bool following;

  FollowingFollowers({
    Key key,
    this.following = true,
  }) : super(key: key);

  List<Container> genCells() {
    List<Container> temp = [];
    for (int i = 0; i < 52; i++) {
      temp.add(
        Container(
          decoration: BoxDecoration(
            color: following ? secondryColour : accentColour,
            shape: BoxShape.circle,
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
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: genCells(),
        ));
  }
}
