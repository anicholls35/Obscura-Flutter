import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/postMetaData.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/userAccount.dart';

class Channel {
  final String channelName;
  List<UserAccount> subscribers;
  List<PostMetaData> posts;

  Channel({
    @required this.channelName,
    this.subscribers,
    this.posts,
  });

  addSubscriber({UserAccount user}) {
    subscribers.add(user);
  }

  addPost({PostMetaData post}) {
    posts.add(post);
  }

  int getSubCount(){
    return subsc
  }
}
