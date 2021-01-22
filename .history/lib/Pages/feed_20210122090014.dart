import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Components/AppBar/mapWidget.dart';
import 'package:obscura/Components/AppBar/searchWidget.dart';
import 'package:obscura/Components/feedPost.dart';

//TODO: Create a component for posts
//TODO: Format feed page to look like prototype
//TODO: Create appbar with correct format
//TODO: Create a bottom bar
//TODO: Link to navigation page

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
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
