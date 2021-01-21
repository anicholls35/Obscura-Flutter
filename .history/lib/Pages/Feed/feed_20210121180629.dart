import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Components/AppBar/mapWidget.dart';
import 'package:obscura/Global_Components/AppBar/searchWidget.dart';
import 'package:obscura/Global_Components/NavBar/baseNavBar.dart';
import 'package:obscura/Pages/Feed/body.dart';

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
        activeUserPicURL: 'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
      ),
      bottomNavigationBar: BaseNavBar(),
      //The ListView will render all posts (to a limit) and draw them in a
      //scrollable frame. It will stop when the end has been reached. Change
      //to pull in more feeds.
      //TODO: Make feed auto load more posts when user reaches the end. (Backend Needed)
      //TODO: Add Row on top of this for channel cards
      body: Body(),
    );
  }
}
