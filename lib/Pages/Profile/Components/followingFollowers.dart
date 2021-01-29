import 'package:flutter/material.dart';

class FollowingFollowers extends StatelessWidget {
  final Color color;

  const FollowingFollowers({Key key, @required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
    );
  }
}
