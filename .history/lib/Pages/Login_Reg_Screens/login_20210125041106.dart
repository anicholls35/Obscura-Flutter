import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginColumn.dart';
import 'package:obscura/constants.dart';

import 'Components/loginColumn.dart';

//TODO: Link to Registration page
//TODO: Link to channel select page
//TODO: Find way to Hide bottom Container.

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Widget topSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    Widget bottomSvg =
        SvgPicture.asset('assets/Vectors/Corner-Art.svg', width: width * 1.5);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            color: primaryColour,
          ),
          Positioned(
            top: -250,
            left: -200,
            child: Container(
              child: topSvg,
            ),
          ),
          Positioned(
            bottom: -350,
            right: -230,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(145 / 260),
              child: Container(
                child: bottomSvg,
              ),
            ),
          ),
          Positioned(
            top: 28,
            right: 5,
            child: LoginButton(
              textStyle: new TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              edgeInsetsGeometry: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              paddingInsets: EdgeInsets.all(15),
              buttonText: "REGISTER",
              buttonColor: secondryColour,
            ),
          ),
          Positioned(
            top: MediaQuery.of,
            child: LoginColumn(),
          ),
        ],
      ),
    );
  }
}
