import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/channelSlider.dart';
import 'package:obscura/Pages/Feed/Components/feedPost.dart';

//TODO: Look into dynamic flutter widget building
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  genFeed() {
    List<Widget> _feed = [];
    for (int i = 0; i < posts.length; i++) {
      _feed.add(FeedPost(uploaderName: posts[i].uploader.userName, uploaderProfilePic: posts[i].uploader.profilePicture, rating: getRating(), commentsTotal: getComments(), geoLocation: posts[i].geoLocation, postImage: posts[i].postImage));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChannelSlider(),
        FeedPost(
          postImage: posts[0],
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
          postImage: feedPhotos[2],
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: feedPhotos[3],
          uploaderProfilePic: accountPhotos[0],
          uploaderName: accountNames[0],
          geoLocation: geoLocations[0],
          commentsTotal: getComments(),
          rating: getRating(),
        ),
        FeedPost(
          postImage: feedPhotos[4],
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
