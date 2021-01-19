import 'package:flutter/material.dart';

import 'Components/feedPost.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
