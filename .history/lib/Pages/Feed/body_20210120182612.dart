import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/channelSlider.dart';
import 'package:obscura/Pages/Feed/Components/feedPost.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

//TODO: Automate with loops to create posts from fake data
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  List<Widget> _temp = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 1; i++) {
      feedPost(
        postImage: PostImage(
          pImage: feedPhotos[i],
        ),
        uploaderProfilePic: accountPhotos[i],
        uploaderName: accountNames[i],
        geoLocation: geoLocations[i],
        commentsTotal: getComments(),
        rating: getRating(),
      );
    }
    return ListView(
      children: <Widget>[
        ChannelSlider(),
      ],
    );
  }
}