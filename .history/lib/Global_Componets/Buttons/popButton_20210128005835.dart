import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class PopButton extends StatelessWidget {
  double size = 30;
  PopButton({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
      enableFeedback: true,
      highlightColor: accentColour,
      hoverColor: secondryColour,
      iconSize: size,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
