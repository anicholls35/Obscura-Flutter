import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class PopButton extends StatelessWidget {
  const PopButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.back_arrow),
      color: Colors.white,
      enableFeedback: true,
      highlightColor: accentColour,
      hoverColor: secondryColour,
      iconSize: 30,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
