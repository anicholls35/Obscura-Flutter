import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Profile/profileFollowers.dart';
import 'package:obscura/Pages/Profile/profilePosts.dart';
import 'package:obscura/Pages/Profile/profileSplashScreen.dart';

//TODO: FlatButton is decrepit

class ProfileFollowing extends StatelessWidget {
  ProfileFollowing({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd0005d),
      body: FollowingBody(),
    );
  }
}

