import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Channel_Select/Components/ChannelButton.dart';
import 'package:obscura/constants.dart';


class ChannelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Widget topSvg =
    SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    Widget bottomSvg =
    SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            color: primaryColour,
          ),
          Positioned(
            top: -250,
            left: -200,
            child: Container(
              child: topSvg,
            ),
          ),
          Positioned(
            bottom: -350,
            right: -230,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(145 / 260),
              child: Container(
                child: bottomSvg,
              ),
            ),
          ),
          ChannelButton(channelName: "Zoomie", channelImage: NetworkImage("https://www.lolwot.com/wp-content/uploads/2015/12/10-of-the-most-awe-inspiring-landscapes-in-the-world-7.jpg"), subscribers: 2000, edgeInsetsGeometry: EdgeInsets.all(10), paddingInsets: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
