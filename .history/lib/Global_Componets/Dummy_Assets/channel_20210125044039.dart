import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/postMetaData.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/userAccount.dart';

class Channel {
  final String channelName;
  List<UserAccount> subscribers;
  List<PostMetaData> posts;
  PostMetaData topPost;
  bool activeChannel = false;
  

  Channel({
    @required this.channelName,
    this.subscribers,
    this.posts,
  });

  _calcTopPost() {
    if (posts == []) {
      return;
    } else {
      activeChannel = true;
      if (posts.length == 1) {
        topPost = posts[0];
      }else{
        for(int i = )
      }
    }
  }

  addSubscriber({UserAccount user}) {
    subscribers.add(user);
  }

  addPost({PostMetaData post}) {
    posts.add(post);
  }

  int getSubCount() {
    return subscribers.length;
  }
}
