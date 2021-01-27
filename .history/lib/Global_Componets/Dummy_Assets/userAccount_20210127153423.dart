import 'package:flutter/material.dart';

class UserAccount {
  final String userName;
  final int followers, posts, following;
  final Image profilePicture;

  UserAccount(
      {@required this.userName,
      this.followers,
      this.profilePicture,
      this.following,
      this.posts});
}
