import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Componets/AppBar/mapWidget.dart';
import 'package:obscura/Global_Componets/AppBar/searchWidget.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';

class myMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text('OBSCURA'),
        appBar: AppBar(),
        widgets: [
          SearchWidget(),
        ],
        activeUserPic: users[0].profilePicture,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Google Maps Page",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
