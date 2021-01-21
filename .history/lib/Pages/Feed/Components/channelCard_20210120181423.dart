import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class ChannelCard extends StatelessWidget {
  final String channelName;
  final NetworkImage channelImage;
  final double borderRadius = 15;
  final double width = 150;
  final double height = 150;

  const ChannelCard({
    Key key,
    @required this.channelName,
    @required this.channelImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      //padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 3,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: channelImage,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColour.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                    bottomRight: Radius.circular(borderRadius),
                  ),
                ),
                width: width,
                height: 40,
                child: Align(
                  child: Text(
                    "$channelName",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
