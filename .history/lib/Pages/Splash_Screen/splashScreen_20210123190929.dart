import '';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{
  @override
  void initState(){
    super.initState(){
      Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MateralPageRoute(builder:(context) Feed())));
    }
  }
}
