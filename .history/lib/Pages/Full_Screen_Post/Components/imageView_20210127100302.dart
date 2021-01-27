import 'package:flutter/material.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

class ImageView extends StatelessWidget {
  final NetworkImage image;

  ImageView({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SwipeGestureRecognizer(
        on
        child: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(image: image),
          ),
        ),
      ),
    );
  }
}
