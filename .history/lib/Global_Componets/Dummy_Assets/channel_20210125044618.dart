import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/postMetaData.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/userAccount.dart';

class Channel {
  final String channelName;
  List<UserAccount> subscribers;
  List<PostMetaData> posts;
  PostMetaData topPost;
  bool activeChannel = false;
  int _postsIndex = 0;

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
      } else {
        double tmpRatingNxt, tmpRatingCur;
        int winningPostIndex;
        for (int i = _postsIndex; i < posts.length - 1; i++) {
          tmpRatingCur = posts[i].rating;
          tmpRatingNxt = posts[i + 1].rating;
          if (tmpRatingCur > tmpRatingNxt) {
            winningPostIndex = i;
          } else {
            winningPostIndex = i + 1;
          }
        }
        topPost = posts[winningPostIndex];
        _post
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
