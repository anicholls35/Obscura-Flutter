import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginColumn.dart';
import 'package:obscura/Pages/Login_Reg_Screens/reg.dart';
import 'package:obscura/constants.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
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
            top: -250,
            left: -200,
            child: Container(
              child: Hero(
                tag: 'topSvg',
                child: topSvg,
              ),
            ),
          ),
          Positioned(
            top: 35,
            right: 5,
            child: LoginButton(
              textStyle: new TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              edgeInsetsGeometry: EdgeInsets.symmetric(horizontal: 40),
              paddingInsets: EdgeInsets.all(15),
              buttonText: "create an account".toUpperCase(),
              buttonColor: secondryColour,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contect) => Register(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Hero(tag: 'child: LoginColumn()),
            ),
          ),
          Positioned(
            bottom: -350,
            right: -230,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(145 / 260),
              child: Container(
                child: Hero(
                  tag: 'bottomSvg',
                  child: bottomSvg,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
