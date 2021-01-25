import 'package:flutter/material.dart';
import 'package:obscura/Pages/Feed/feed.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute(Feed feed, {this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
