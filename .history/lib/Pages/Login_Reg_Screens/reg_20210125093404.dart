import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/regColumn.dart';
import 'package:obscura/constants.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    Widget topSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    Widget bottomSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            color: primaryColour,
          ),
          Positioned(
            top: -280,
            left: -240,
            child: Container(
              child: Hero(
                tag: 'topSvg',
                child: topSvg,
              ),
            ),
          ),
          Positioned(
            top: height * 0.06,
            right: 5,
            child: LoginButton(
              textStyle: new TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
              paddingInsets: EdgeInsets.all(15),
              buttonText: "login".toUpperCase(),
              buttonColor: secondryColour,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: -400,
            right: -235,
            child: Hero(
              tag: 'bottomSvg',
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(145 / 260),
                child: Container(
                  child: bottomSvg,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: RegisterColumn(),
            ),
          ),
        ],
      ),
    );
  }
}
