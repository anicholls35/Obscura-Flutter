import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  //Fields
  final String buttonText;
  final Color buttonColor;
  final TextStyle textStyle;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;
  final Function onPressed;

  //Constructor
  const LoginButton(
      {Key key,
      @required this.buttonText,
      @required this.buttonColor,
      @required this.textStyle,
      @required this.edgeInsetsGeometry,
      @required this.paddingInsets,
      this.onPressed})
      : super(key: key);

  
}

class _LoginButton extends <State>
