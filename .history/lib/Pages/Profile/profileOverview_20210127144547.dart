import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

class ProfileOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          ProfileFull(pImage: users[0].profilePicture),
          Positioned(
            bottom: 0,
            child: Text(users[0].userName),
          ),
        ],
      ),
    );
  }
}
