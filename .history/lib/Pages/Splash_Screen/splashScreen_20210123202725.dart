import 'dart:async';
import 'package:flutter/material.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    // Timer(
    //   Duration(seconds: 3),
    //   () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => Feed(),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Widget topSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    Widget bottomSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    return Stack(
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
        Positioned(
          top: MediaQuery.of(context).size.height * 0.45,
          left: width * 0.35,
          child: Image(
            image: AssetImage('assets/Images/logo-rounded-lrg.png'),
            width: width * 0.3,
          ),
        ),
        Positioned(
          bottom: 0,
          left: width * 0.3,
          child: LoadingFadingLine.circle(
            borderColor: accentColour,
            backgroundColor: accentColour,
            size: 50,
          ),
        ),
      ],
    );
  }
}
