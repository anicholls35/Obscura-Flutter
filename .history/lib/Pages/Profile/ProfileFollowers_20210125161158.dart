import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Profile/profileFollowing.dart';
import 'package:obscura/Pages/Profile/profilePosts.dart';
import 'package:obscura/Pages/Profile/profileSplashScreen.dart';

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

