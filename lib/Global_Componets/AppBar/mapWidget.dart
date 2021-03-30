import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: IconButton(
        icon: Icon(Icons.map_sharp),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Coming Soon: Heatmap"),
                  content: Text("See where all the latest photos are being taken. " +
                      "As more and more people upload posts to the Obscura " +
                      "platform the heatmap will start to fill in so you can see " +
                      "where people take the most pictures. Zoom in for close " +
                      "look at what people have been taking pictures of in that area."),
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
