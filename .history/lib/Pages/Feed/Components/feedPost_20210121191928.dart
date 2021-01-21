import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Full_Screen_Post/fullScreenPost.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';
import 'package:obscura/constants.dart';

class FeedPost extends StatelessWidget {
  //Set's Widgets vals when assigned - final (can't be changed)
  final String uploaderName, geoLocation;
  final NetworkImage uploaderProfilePic, postImage;
  final double rating;
  final int commentsTotal;

  //Constructor - Assignes all values from which are passed
  const FeedPost(
      {Key key,
      @required this.uploaderName,
      @required this.uploaderProfilePic,
      @required this.rating,
      @required this.commentsTotal,
      @required this.geoLocation,
      @required this.postImage})
      : super(key: key);

  //Returns a container widget will values on display
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullScreenPost(
              image: postImage,
              up
            ),
          ),
        );
      },
      child: Container(
        height: 300,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            PostImage(pImage: postImage),
            //This Positioned adds in the geo-location
            Positioned(
              top: 10,
              right: 10,
              child: Row(
                children: [
                  Text(
                    geoLocation,
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        color: Colors.white,
                        size: 15,
                      ),
                      child: Icon(Icons.location_on),
                    ),
                  ),
                ],
              ),
            ),
            //This position deals with the uploader account
            Positioned(
              bottom: 7,
              left: 10,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: accentColour),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: uploaderProfilePic,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      uploaderName,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Postions the comments and rating
            Positioned(
              bottom: 7,
              right: 10,
              child: Row(
                children: [
                  Text(
                    commentsTotal.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        color: Colors.white,
                        size: 16,
                      ),
                      child: Icon(Icons.message_outlined),
                    ),
                  ),
                  Text(
                    rating.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        color: Colors.white,
                        size: 16,
                      ),
                      child: Icon(Icons.star_border),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
