import 'package:flutter/material.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import 'package:photo_view/photo_view.dart';

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
        onSwipeUp: () {
          Navigator.pop(context);
        },
        child: Container(
          child: PhotoView,
          ),
        ),
      ),
    );
  }
}
