import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Componets/AppBar/mapWidget.dart';
import 'package:obscura/Global_Componets/AppBar/searchWidget.dart';
import 'package:obscura/Global_Componets/NavBar/baseNavBar.dart';
import 'package:obscura/Pages/Feed/body.dart';

class Feed extends StatefulWidget {
  _Feed createState() => _Feed();
}

class _Feed extends State<Feed> {
  final int _pageIndex = 0;

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
        ac
      ),
      bottomNavigationBar: BaseNavBar(
        index: _pageIndex,
      ),
      //The ListView will render all posts (to a limit) and draw them in a
      //scrollable frame. It will stop when the end has been reached. Change
      //to pull in more feeds.
      //TODO: Make feed auto load more posts when user reaches the end. (Backend Needed)
      body: Body(),
    );
  }
}
