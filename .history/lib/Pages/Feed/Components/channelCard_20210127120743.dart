import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class ChannelCard extends StatelessWidget {
  final String channelName;
  final NetworkImage channelImage;

  const ChannelCard({
    Key key,
    @required this.channelName,
    @required this.channelImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double borderRadius = 15;
    final double width = MediaQuery.of(context).size.width * 0.34;
    final double height = MediaQuery.of(context).size.height * 0.1;
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(right: 10),
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
