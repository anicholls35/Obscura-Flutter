import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  //Fields
  final String channelName;
  final NetworkImage channelImage;
  final int subscribers;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;

  final double maxSize = 20;
  final double growthRate = 3;



  //Constructor
  const LoginButton(
    {Key key,
    @required this.channelName,
    @required this.channelImage,
    @required this.subscribers,
    @required this.edgeInsetsGeometry,
    @required this.paddingInsets,
    })
    : super(key: key);


  double size (double maxSize, double growthRate, int subscribers) {
    return (-(growthRate)/subscribers)+maxSize;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.paddingInsets,
      child:
        ElevatedButton.icon(
          icon: Image(image: channelImage),
          style: ElevatedButton.styleFrom(
            shape: new CircleBorder(
              side: new BorderSide(width: size(maxSize, growthRate, subscribers)),
            ),
            padding: this.edgeInsetsGeometry,
          ),
          onPressed: () {},
          label: Text(channelName),
    ),)
      ;
  }
}
