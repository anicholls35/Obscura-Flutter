import 'package:flutter/material.dart';
import 'package:obscura/Pages/Profile/Components/followingBody.dart';

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

