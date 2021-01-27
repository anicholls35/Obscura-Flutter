import 'package:flutter/material.dart';

class UserAccount {
  final String userName;
  final int followers, posts, following;
  final NetworkImage networkProfilePicture;

  UserAccount(
      {@required this.userName,
      this.followers,
      @required this.networkProfilePicture,
      this.following,
      this.posts});
}
