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
    return Container(
      width: 150,
      height: 200,
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3,
        child: Stack(
          children: <Widget>[
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: channelImage,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColour.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: 150,
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
