import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:obscura/constants.dart';
import 'dart:math';


class ChannelButton extends StatelessWidget {
  //Channel Fields
  final String channelName;
  final NetworkImage channelImage;
  final int subscribers;

  //Looks Fields
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;

  //Size Fields
  final double multiplier = 30;
  final double curveRate = 10;
  final double maxSize = 1000;
  final double minSize = 10;


  //Constructor
  const ChannelButton({Key key,
    @required this.channelName,
    @required this.channelImage,
    @required this.subscribers,
    @required this.edgeInsetsGeometry,
    @required this.paddingInsets,
  })
      : super(key: key);


  double size(double multiplier, double curveRate, int subscribers) {
    double temp = multiplier * log((curveRate*subscribers)+1);
    if (temp > maxSize){
      return maxSize;
    } else if (temp < minSize){
      return minSize;
    } else {
      return temp;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: size(multiplier, curveRate, subscribers),
      height: size(multiplier, curveRate, subscribers),
      child: Padding(
          padding: this.paddingInsets,
          child:
          GestureDetector(
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(width: 5),
                    ),
                    shadows: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                    color: Colors.black,
                    image: DecorationImage(
                      image: channelImage,
                      fit: BoxFit.cover,
                    ),
                    // button text
                  ),
                  child: Center(
                      child: Text(channelName)
                  )
              ),
              onTap:(){}
          )
      ),
    );
  }
}