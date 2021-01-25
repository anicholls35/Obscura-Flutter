import 'package:flutter/material.dart';


class Channel {
  final String channelName;
  final List<UserAccount> subscribers;
  final List<PostMetaData> posts;

  UserAccount(
      {@required this.channelName, this.subscribers, @required this.posts});
}
