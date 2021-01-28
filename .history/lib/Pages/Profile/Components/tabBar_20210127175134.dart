import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/constants.dart';

class TabBarProfiles extends StatelessWidget {
  bool background = false;
  TabBarProfiles({
    Key key,
    this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
    TextStyle styleActive = TextStyle(color: accentColour, fontSize: 20);
    return Container(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Posts",
                      style: styleActive,
                    ),
                    Text(
                      users[0].posts.toString(),
                      style: styleActive,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Following",
                      style: style,
                    ),
                    Text(
                      users[0].following.toString(),
                      style: style,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Followers",
                      style: style,
                    ),
                    Text(
                      users[0].followers.toString(),
                      style: style,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
