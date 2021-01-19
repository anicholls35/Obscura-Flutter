import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

void main() {
  runApp(Obscura());
}

/// main.dart is responsible for starting the app and dealing with Obscura's
/// navigation. Pushing and Popping screens as needed.

class Obscura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obscura',
      theme: ThemeData(
        primaryColor: primaryColour,
        accentColor: accentColour,
      ),
      routes: {
        '/': (context) => fe,
      },
    );
  }
}
