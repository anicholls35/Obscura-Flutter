import 'package:flutter/material.dart';

//TODO: Create a component for posts
//TODO: Format feed page to look like prototype
//TODO: Create appbar with correct format
//TODO: Seperate appbar as component - allow uniformity accross pages
//TODO: Create a bottom bar
//TODO: Link to navigation page

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'OBSCURA',
        ),
        leading: new Padding(
          padding: EdgeInsets.all(8.0),
          child: Material(
            shape: CircleBorder(),
          ),
        ),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
