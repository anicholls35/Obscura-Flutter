import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final NetworkImage image;

  ImageView({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      decoration: BoxDecoration(
        image: Image(image: image,)
      ),
    );
  }
}
