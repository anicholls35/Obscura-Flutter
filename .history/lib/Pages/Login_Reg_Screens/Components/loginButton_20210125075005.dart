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

  _LoginButton createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {

  _LoginButton()

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.paddingInsets,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: this.buttonColor,
            textStyle: this.textStyle,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            padding: this.edgeInsetsGeometry,
          ),
          onPressed: onPressed == null ? () {} : onPressed,
          child: Text(this.buttonText)),
    );
  }
}
