import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.green),
        child: IgnorePointer(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
            ],
          ),
        ));
  }
}
