import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/channelSlider.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

//TODO: Automate with loops to create posts from fake data
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChannelSlider(),
        FeedPost(
          postImage: PostImage(
            pImage: feedPhotos[i],
          ),
          uploaderProfilePic: accountPhotos[i],
          uploaderName: accountNames[i],
          geoLocation: geoLocations[i],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
      ],
    );
  }
