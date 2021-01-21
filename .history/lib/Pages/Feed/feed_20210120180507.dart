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
            channelImage: NetworkImage(
                'https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/dogs_1280p_0.jpg?itok=cnRk0HYq'),
          ),
          ChannelCard(
            channelName: "Cars",
            channelImage: NetworkImage(
                'https://drivewrite.co.uk/wp-content/uploads/2019/12/Classic-car-624x351.jpg'),
          ),
          ChannelCard(
            channelName: "Make-up",
            channelImage: NetworkImage(
                'https://static.onecms.io/wp-content/uploads/sites/14/2020/08/20/makeup-header-2000.jpg'),
          ),
          ChannelCard(
            channelName: "Landscapes",
          ),
          ChannelCard(
            channelName: "Vintage",
          ),
          ChannelCard(
            channelName: "Food",
            channelImage: NetworkImage(
                'https://www.diabetes.co.uk/wp-content/uploads/2019/01/iStock-10131071761-1.jpg'),
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
