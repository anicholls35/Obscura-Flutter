import 'package:flutter/material.dart';
import 'package:obscura/Components/AppBar/baseAppBar.dart';
import 'package:obscura/Components/AppBar/mapWidget.dart';
import 'package:obscura/Components/AppBar/searchWidget.dart';

//TODO: Use this as a base template for your page

class hello_world extends StatelessWidget {
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
