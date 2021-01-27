import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

class ProfileOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Row(
            children: <Widget>[
              Text("Posts"),
              Text("Following"),
              Text("Followers")
            ],
          ),
        ],
      ),
    );
  }
}
