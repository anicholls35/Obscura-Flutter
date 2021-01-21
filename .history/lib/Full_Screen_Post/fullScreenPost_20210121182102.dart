import 'package:flutter/material.dart';

class FullScreenPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obscura',
      theme: ThemeData(
        primaryColor: primaryColour,
        accentColor: accentColour,
        scaffoldBackgroundColor: primaryColour,
      ),
      routes: {
        '/': (context) => Feed(),
      },
    );
  }
}