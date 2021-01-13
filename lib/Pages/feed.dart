import 'package:flutter/material.dart';

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
