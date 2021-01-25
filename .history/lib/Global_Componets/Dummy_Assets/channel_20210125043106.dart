import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/postMetaData.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/userAccount.dart';

class Channel {
  final String channelName;
  final List<UserAccount> subscribers;
  final List<PostMetaData> posts;

  Channel({
    @required this.channelName,
    this.subscribers,
    @required this.posts,
  });
}
