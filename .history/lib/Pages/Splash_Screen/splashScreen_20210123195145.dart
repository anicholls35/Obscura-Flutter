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
    Widget topSvg = SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width);
    return Stack(
      children: [
        topSvg,
      ],
    );
  }
}
