import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileFull extends StatelessWidget {
  final NetworkImage pImage;

  const Profile({Key key, @required this.pImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //Image and Container draw the Image with an inner shadow to better
        //view text overlayed
        Hero(
          transitionOnUserGestures: true,
          tag: 'image',
          child: Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            image: pImage,
          ),
        ),
        Container(
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
