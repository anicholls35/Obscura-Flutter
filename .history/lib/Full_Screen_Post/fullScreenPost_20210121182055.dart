import 'package:flutter/material.dart';

class Obscura extends StatelessWidget {
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