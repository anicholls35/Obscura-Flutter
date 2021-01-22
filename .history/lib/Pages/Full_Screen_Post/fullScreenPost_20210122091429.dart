import 'package:flutter/material.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/fullScreenContainer.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/postImage.dart';
import 'package:obscura/Pages/Comments_View/';

//TODO: Display Post Full Screen
//TODO: Create Post Class which darkens image edges (Top + Bottom)
//TODO: Add a back button

class FullScreenPost extends StatelessWidget {
  final NetworkImage image, uploaderProfilePic;
  final String uploaderName, geoLocation;
  final int commentsTotal;
  final double rating;

  const FullScreenPost(
      {Key key,
      @required this.image,
      @required this.uploaderProfilePic,
      @required this.uploaderName,
      @required this.geoLocation,
      this.commentsTotal,
      this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Comments();
              ),
            );
          },
          child: FullScreenContainer(
            uploaderName: '$uploaderName',
            geoLocation: '$geoLocation',
            uploaderProfilePic: uploaderProfilePic,
            postImage: PostImage(
              pImage: image,
            ),
            commentsTotal: commentsTotal,
            rating: rating,
          ),
        ),
      ),
    );
  }
}
