import 'dart:async';
import 'package:flutter/material.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      children: [
        Positioned(
          top: -250,
          left: -200,
          child: Container(
            child: topSvg,
          ),
        ),
        Positioned(
          bottom: -250,
          right: -220,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(130 / 260),
            child: Container(
              child: topSvg,
            ),
          ),
        ),
      ],
    );
  }
}
