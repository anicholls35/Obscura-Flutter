import 'package:flutter/material.dart';

class UserAccount {
  final String userName;
  final int followers;
  final NetworkImage profilePicture;

  UserAccount({
    @required this.userName,
    this.followers,
    this.profilePicture
  }) : ();
}
