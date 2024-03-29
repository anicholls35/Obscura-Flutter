import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/channelSlider.dart';
import 'package:obscura/Pages/Feed/Components/feedPost.dart';

//TODO: Look into dynamic flutter widget building
class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  _Body createState() => _Body();
}

class _Body extends State<Body> {
  List<Widget> genFeed() {
    getComments();
    List<Widget> _feed = [];

    for (int i = 0; i < posts.length; i++) {
      _feed.add(
        FeedPost(
          uploaderName: posts[i].uploader.userName,
          uploaderProfilePic: posts[i].uploader.profilePicture,
          rating: posts[i].rating,
          commentsTotal: posts[i].comments,
          geoLocation: posts[i].geoLocation,
          postImage: posts[i].postImage,
        ),
      );
    }

    return _feed;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChannelSlider(),
        Column(
          children: genFeed(),
        ),
      ],
    );
  }
}
