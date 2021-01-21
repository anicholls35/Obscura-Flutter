import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:obscura/Pages/Feed/body.dart';
import 'package:obscura/constants.dart';
import '../../Global_Components/AppBar/baseAppBar.dart';
import '../../Global_Components/AppBar/mapWidget.dart';
import '../../Global_Components/AppBar/searchWidget.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text('OBSCURA'),
        appBar: AppBar(),
        widgets: [
          MapWidget(),
          SearchWidget(),
        ],
      ),
      //The ListView will render all posts (to a limit) and draw them in a
      //scrollable frame. It will stop when the end has been reached. Change
      //to pull in more feeds.
      //TODO: Make feed auto load more posts when user reaches the end. (Backend Needed)
      //TODO: Add Row on top of this for channel cards
      body: Center(
        child: ChannelSlider(),
      ),
    );
  }
}

class ChannelSlider extends StatelessWidget {
  const ChannelSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChannelCard(
            channelName: "Animals",
          ),
          ChannelCard(
            channelName: "Cars",
          ),
          ChannelCard(
            channelName: "Make-up",
          ),
          ChannelCard(
            channelName: "Landscapes",
          ),
          ChannelCard(
            channelName: "Vintage",
          ),
          ChannelCard(
            channelName: "Food",
            channelImage: NetworkImage,
          ),
        ],
      ),
    );
  }
}

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
