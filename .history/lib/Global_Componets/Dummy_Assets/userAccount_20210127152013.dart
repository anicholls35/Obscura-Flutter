import 'package:flutter/material.dart';

class UserAccount {
  final String userName;
  final int followers, posts, following;
  final NetworkImage profilePicture;

  UserAccount(
      {@required this.userName,
      this.followers,
      @required this.profilePicture,
      this.following,
      this.posts});
}
