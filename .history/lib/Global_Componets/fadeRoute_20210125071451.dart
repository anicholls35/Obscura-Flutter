import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page}) : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation,) => page, trans
  );
}
