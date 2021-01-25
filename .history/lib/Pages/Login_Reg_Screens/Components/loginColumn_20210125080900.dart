import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginFormField.dart';
import 'package:obscura/constants.dart';

class LoginColumn extends StatefulWidget {
  LoginColumn({Key key}) : super(key: key);
  _LoginColumn createState() => _LoginColumn();
}

class _LoginColumn extends State<LoginColumn> {
  //Button Values
  final TextStyle buttonTextStyle = new TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
  final EdgeInsetsGeometry buttonPaddingInsets =
      EdgeInsets.symmetric(vertical: 1);
  final EdgeInsetsGeometry buttonEdgeInsetsGeometry = EdgeInsets.all(8);

  //Form Values
  final EdgeInsetsGeometry formPaddingInsets =
      EdgeInsets.symmetric(vertical: 6);
  final EdgeInsetsGeometry formEdgeInsetsGeometry = EdgeInsets.all(12);
  final TextStyle formTextStyle = new TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    //Width + Height
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: LoginFormField(
            formText: "username".toUpperCase(),
            prefixIcon: Icon(Icons.email),
            textStyle: formTextStyle,
            edgeInsetsGeometry: formEdgeInsetsGeometry,
            paddingInsets: formPaddingInsets,
            fillColor: primaryColour,
            obscure: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: LoginFormField(
            formText: "password".toUpperCase(),
            prefixIcon: Icon(Icons.lock),
            textStyle: formTextStyle,
            edgeInsetsGeometry: formEdgeInsetsGeometry,
            paddingInsets: formPaddingInsets,
            fillColor: primaryColour,
            obscure: false,
          ),
        ),
        LoginButton(
          buttonText: 'Login'.toUpperCase(),
          buttonColor: accentColour,
          textStyle: buttonTextStyle,
          edgeInsetsGeometry: buttonEdgeInsetsGeometry,
          paddingInsets: buttonPaddingInsets,
          onPressed: () {
            print('Login Pressed');
            Navigator.push(
              context,
              FadeRoute(
                page: Feed(),
              ),
            );
          },
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'Login with Facebook'.toUpperCase(),
            buttonColor: Colors.blue,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'Login with google'.toUpperCase(),
            buttonColor: Colors.deepOrange,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
          ),
        ),
        Visibility(
          visible:
              Theme.of(context).platform == TargetPlatform.iOS ? true : false,
          child: SizedBox(
            width: width * 0.5,
            child: LoginButton(
              buttonText: 'Login with apple'.toUpperCase(),
              buttonColor: Colors.black,
              textStyle: buttonTextStyle,
              edgeInsetsGeometry: buttonEdgeInsetsGeometry,
              paddingInsets: buttonPaddingInsets,
            ),
          ),
        ),
      ],
    );
  }
}
