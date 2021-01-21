import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Full_Screen_Post/Components/postImage.dart';
import 'package:obscura/constants.dart';

class FullScreenContainer extends StatelessWidget {
  //Set's Widgets vals when assigned - final (can't be changed)
  final String uploaderName;
  final NetworkImage uploaderProfilePic;
  final double rating;
  final int commentsTotal;
  final String geoLocation;
  final PostImage postImage;

  //Constructor - Assignes all values from which are passed
  const FullScreenContainer(
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
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          postImage,
          //Adding a back Button
          Positioned(
            top: 10,
            left: 10,
            child: IconTheme(
              data: IconThemeData(
                color: Colors.white,
                size: 30,
              ),
              child: Icon(Icons.arrow_back),
            ),
          ),
          //This Positioned adds in the geo-location
          Positioned(
            top: 18,
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
                  width: 30,
                  height: 30,
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5,
                    
                  ),
                  child: IconTheme(
                    data: IconThemeData(
                      color: Colors.white,
                      size: 22,
                    ),
                    child: Icon(Icons.message_outlined),
                  ),
                ),
                Text(
                  rating.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
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
    );
  }
}
