import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final NetworkImage pImage;

  const PostImage({Key key, @required this.pImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        //Image and Container draw the Image with an inner shadow to better
        //view text overlayed
        Center(
          child: Image(
            fit: BoxFit.fitWidth,
            image: pImage,
            height: height * 0.3,
          ),
        ),
        Container(
          height: height * 0.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xcc000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0xcc000000),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
