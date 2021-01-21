import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Components/AppBar/mapWidget.dart';
import 'package:obscura/Global_Components/AppBar/searchWidget.dart';
import 'package:obscura/Pages/Feed/body.dart';
import 'package:obscura/constants.dart';

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

class BaseNavBar extends StatelessWidget {
  const BaseNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColour,
      selectedItemColor: secondryColour,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: "Camera",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard), label: "Leaderboards"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}
