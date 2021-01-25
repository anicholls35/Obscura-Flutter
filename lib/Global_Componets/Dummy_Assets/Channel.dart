import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/postMetaData.dart';
import 'package:obscura/Global_Components/DummyAssets/userAccount.dart';

class Channel {
  final String channelName;
  final List<UserAccount> subscribers;
  final List<PostMetaData> posts;

  UserAccount(
      {@required this.channelName, this.subscribers, @required this.posts});
}