import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: IconButton(
        icon: Icon(Icons.search_sharp),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Coming Soon: Search"),
                  content: Text(
                      "Search the plaform for other users, channels, " +
                          "challenges, post history and much more."),
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
    );
  }
}
