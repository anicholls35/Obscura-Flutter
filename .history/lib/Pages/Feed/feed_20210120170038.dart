import 'package:flutter/material.dart';
import 'package:obscura/Pages/Feed/body.dart';
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
        child: ChannelCard(),
      ),
    );
  }
}

class ChannelCard extends StatelessWidget {
  final String channelName;
  final NetworkImage 

  const ChannelCard({
    Key key,
    @required this.channelName,

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
        color: Colors.red,
        elevation: 10,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, bottom: 8.0, right: 8.0),
                child: Text("Hello World"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
