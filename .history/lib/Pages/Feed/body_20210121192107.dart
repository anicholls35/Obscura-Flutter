import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/channelSlider.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';
import 'package:obscura/Pages/Feed/Components/feedPost.dart';

//TODO: Look into dynamic flutter widget building
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
          postImage: feedPhotos[0],
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: feedPhotos[1],
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: PostImage(
            pImage: feedPhotos[2],
          ),
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: PostImage(
            pImage: feedPhotos[3],
          ),
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: PostImage(
            pImage: feedPhotos[4],
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
