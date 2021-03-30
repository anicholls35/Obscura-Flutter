import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Componets/AppBar/mapWidget.dart';
import 'package:obscura/Global_Componets/AppBar/searchWidget.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/NavBar/baseNavBar.dart';
import 'package:obscura/Pages/Feed/body.dart';

import '../../constants.dart';

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
        activeUserPic: users[0].profilePicture,
      ),
      bottomNavigationBar: BaseNavBar(
        index: _pageIndex,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondryColour,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Coming Soon: Channel Creation"),
                  content: Text("Channel creation, currently unimplimented, will allow " +
                      "users to create channels for their intrests. That user " +
                      "will become the admin of the channel and can make it " +
                      "public or private. This will, in-turn, create a " +
                      "community of users with similar intrests were they " +
                      "can share their images associated with the channel " +
                      "along with finding others to talk about their similar intrests."),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Okay"),
                    ),
                  ],
                );
              });
        },
      ),
      body: Body(),
    );
  }
}
