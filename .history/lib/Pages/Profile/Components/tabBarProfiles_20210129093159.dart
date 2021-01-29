import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/constants.dart';

// ignore: must_be_immutable
class TabBarProfiles extends StatelessWidget {
  bool background = false;
  int index = -1;
  TabBarProfiles({Key key, this.background, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
    TextStyle styleActive = TextStyle(color: secondryColour, fontSize: 20);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        child: Container(
          width: double.infinity,
          decoration: background == true
              ? BoxDecoration(
                  color: primaryColour,
                  backgroundBlendMode: BlendMode.darken,
                )
              : BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 55,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Posts",
                        style: index == 0 ? styleActive : style,
                      ),
                      Text(
                        users[0].posts.toString(),
                        style: index == 0 ? styleActive : style,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Following",
                        style: index == 1 ? styleActive : style,
                      ),
                      Text(
                        users[0].following.toString(),
                        style: index == 1 ? styleActive : style,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Followers",
                        style: index == 2 ? styleActive : style,
                      ),
                      Text(
                        users[0].followers.toString(),
                        style: index == 2 ? styleActive : style,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
