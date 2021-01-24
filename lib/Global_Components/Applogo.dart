import 'package:flutter/material.dart';

class Applogo extends StatelessWidget {
  const Applogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.0,
      height: 94.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        image: DecorationImage(
          image: AssetImage(''),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
