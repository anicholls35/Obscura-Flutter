import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/feedPost.dart';
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
        ChannelCard(),
        feedPost(
          postImage: PostImage(
            pImage: feedPhotos[0],
          ),
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
      ],
    );
  }
}

class ChannelCard extends StatelessWidget {
  final String channelName;

  const ChannelCard({
    Key key, this.channelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        alignment: Ali,
      ),
    );
  }
}
