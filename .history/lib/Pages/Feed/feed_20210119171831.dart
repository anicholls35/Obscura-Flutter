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
      body: Body(),
    );
  }
}