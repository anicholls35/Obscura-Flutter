import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Profile/profileFollowers.dart';
import 'package:obscura/Pages/Profile/profileFollowing.dart';
import 'package:obscura/Pages/Profile/profilePosts.dart';

class ProfileSplashscreen extends StatelessWidget {
  ProfileSplashscreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SplashBody();
  }
}
