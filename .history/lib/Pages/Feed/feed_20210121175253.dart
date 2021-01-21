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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: accentColour,
        selectedItemColor: secondryColour,
        unselectedItemColor: primaryColour.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: Text()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
          ),
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
