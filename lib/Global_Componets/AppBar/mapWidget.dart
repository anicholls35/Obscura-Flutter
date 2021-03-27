import 'package:flutter/material.dart';
import 'package:obscura/Pages/Map/mapPage.dart';

class MapWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        child: Icon(Icons.map),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => myMap()));
        },
      ),
      
    );
  }
}
