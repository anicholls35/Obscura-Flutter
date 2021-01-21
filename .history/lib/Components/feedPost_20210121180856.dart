import 'package:flutter/cupertino.dart';

class feedPost extends StatelessWidget {
  //Set's Widgets vals when assigned - final (can't be changed)
  final Text uploaderName;
  final AssetImage uploaderProfilePic;
  final double rating;
  final int commentsTotal;
  final Text geoLocation;
  final AssetImage postImage;

  //Constructor - Assignes all values from which are passed
  const feedPost(
      {Key key,
      @required this.uploaderName,
      this.uploaderProfilePic,
      @required this.rating,
      @required this.commentsTotal,
      @required this.geoLocation,
      this.postImage})
      : super(key: key);

  //Returns a container widget will values on display
  //TODO: Fix ImageAssets not loading
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: postImage,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          geoLocation,
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: uploaderProfilePic,
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              uploaderName,
              Text(commentsTotal.toString()),
              Text(rating.toString())
            ],
          ),
        ],
      ),
    );
  }
}
