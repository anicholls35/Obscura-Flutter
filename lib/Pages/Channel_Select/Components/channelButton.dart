import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:obscura/constants.dart';


class ChannelButton extends StatefulWidget {
  //Fields
  final String channelName;
  final NetworkImage channelImage;
  final int subscribers;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;

  final double maxSize = 100000;
  final double growthRate = 5;


  //Constructor
  const ChannelButton({Key key,
    @required this.channelName,
    @required this.channelImage,
    @required this.subscribers,
    @required this.edgeInsetsGeometry,
    @required this.paddingInsets,
  })
      : super(key: key);


  double size(double maxSize, double growthRate, int subscribers) {
    double temp = (0 - (growthRate) / (subscribers.toDouble()) + maxSize);
    if (temp < 100){
      return 100;
    } else{
      return temp;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: size(maxSize, growthRate, subscribers),
      height: size(maxSize, growthRate, subscribers),
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