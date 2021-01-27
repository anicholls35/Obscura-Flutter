import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

class ProfileOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileFull(pImage: users[0].profilePicture),
        Text(data)
      ],
    );
  }
}
