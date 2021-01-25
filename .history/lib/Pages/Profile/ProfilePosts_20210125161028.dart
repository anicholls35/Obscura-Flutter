import 'package:flutter/material.dart';


class ProfilePosts extends StatelessWidget {
  ProfilePosts({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd0005d),
      body: PostsBody(),
    );
  }
}

