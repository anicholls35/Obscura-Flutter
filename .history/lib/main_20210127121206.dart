import 'package:flutter/material.dart';
import 'package:obscura/Pages/Splash_Screen/splashScreen.dart';
import 'package:obscura/constants.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Obscura());
}

/// main.dart is responsible for starting the app and dealing with Obscura's
/// navigation. Pushing and Popping screens as needed.

class Obscura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obscura',
      theme: ThemeData(
        primaryColor: primaryColour,
        accentColor: accentColour,
        scaffoldBackgroundColor: primaryColour,
      ),
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}
