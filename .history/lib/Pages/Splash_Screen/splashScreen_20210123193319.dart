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
  final Widget topSvg = SvgPicture.asset('assets/Vectors/Corner-Art.svg');

  void initState() {
    super.initState();
    ?
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        topSvg,
      ],
    );
  }
}
