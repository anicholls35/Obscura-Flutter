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
          TabBarHeadings(height: height, tabBarStyle: tabBarStyle),
        ],
      ),
    );
  }
}

class TabBarHeadings extends StatelessWidget {
  const TabBarHeadings({
    Key key,
    @required this.height,
    @required this.tabBarStyle,
  }) : super(key: key);

  final double height;
  final TextStyle tabBarStyle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: height * 0.07,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Posts",
                    style: tabBarStyle,
                  ),
                  Text("0000", style: tabBarStyle,)
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Following",
              style: tabBarStyle,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Followers",
              style: tabBarStyle,
            ),
          ],
        ),
      ),
    );
  }
}
