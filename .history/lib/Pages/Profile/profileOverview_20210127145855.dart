import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

class ProfileOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle tabBarStyle = TextStyle(color: Colors.white, fontSize: 20);
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          ProfileFull(pImage: users[0].profilePicture),
          Positioned(
            bottom: height * 0.13,
            child: Text(
              users[0].userName,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              main
              children: <Widget>[
                Container(
                  height: 50,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Posts",
                        style: tabBarStyle,
                      ),
                      Text(
                        "0000",
                        style: tabBarStyle,
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: 50,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Following",
                        style: tabBarStyle,
                      ),
                      Text(
                        "0000",
                        style: tabBarStyle,
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: 50,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Followers",
                        style: tabBarStyle,
                      ),
                      Text(
                        "0000",
                        style: tabBarStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
