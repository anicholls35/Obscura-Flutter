import 'package:flutter/material.dart';

class UserAccount {
  final String userName;
  final int followers, posts, following;
  final NetworkImage networkProfilePicture;
  final

  UserAccount(
      {@required this.userName,
      this.followers,
      this.networkProfilePicture,
      this.following,
      this.posts});
}
