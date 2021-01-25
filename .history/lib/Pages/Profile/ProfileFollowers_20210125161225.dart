import 'package:flutter/material.dart';
import 'package:obscura/Pages/Profile/Components/profileBody.dart';

//TODO: FlatButton is decrepit change to new version

class ProfileFollowers extends StatelessWidget {
  ProfileFollowers({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd0005d),
      body: ProfileBody(),
    );
  }
}

