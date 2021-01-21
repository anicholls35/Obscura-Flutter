import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String pImage;

  const PostImage({Key key, @required this.pImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //Image and Container draw the Image with an inner shadow to better
        //view text overlayed
        Image(
          fit: BoxFit.cover,
          image: NetworkImage(),
        ),
        Container(
          height: 300,
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
