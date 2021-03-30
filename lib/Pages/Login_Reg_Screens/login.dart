import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //Terms Dialog
      String os = Platform.isAndroid ? "Android" : "iOS";

      await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Welcome to Obscura - Terms of early testing"),
              content: Text("Thank you for trying the Obscura " +
                  "App for $os. Obscura is a product by Lucky7 for MACS year 3 project. Before continuing, we'd like to quickly explain a " +
                  "few things.\n1. This is early production app and is missing " +
                  "alot of the features which we aim to have for the final product.\n" +
                  "2. Even though this is an early production app, it is connected to " +
                  "a live server. Which means any accounts made and posts uploaded " +
                  "are stored online and saved. Your data is all encryped, and is " +
                  "only accsessable by the members of Lucky7.\n" +
                  "3. After the duration of this public test, all data made during " +
                  "the testing stage will be deleted from the servers.\n" +
                  "After reading, please accept below; or decline. " +
                  "You can withdrawl anytime by emailing: " +
                  "luckygroup7@heriotwatt.onmicrosoft.com"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else {
                      exit(0);
                    }
                  },
                  child: Text("Disagree"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Agree"),
                ),
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    //Login Screen
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
            top: height * 0.06,
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
                print('bttn clicked');
                Navigator.push(
                  context,
                  FadeRoute(
                    page: Register(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: -350,
            right: -230,
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
            top: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: LoginColumn(),
            ),
          ),
        ],
      ),
    );
  }
}
