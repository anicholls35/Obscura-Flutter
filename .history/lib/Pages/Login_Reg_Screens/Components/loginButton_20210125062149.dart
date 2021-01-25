import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  //Fields
  final String buttonText;
  final Color buttonColor;
  final TextStyle textStyle;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;

  //Constructor
  const LoginButton({
    Key key,
    @required this.buttonText,
    @required this.buttonColor,
    @required this.textStyle,
    //@required this.height,
    //@required this.width,
    @required this.edgeInsetsGeometry,
    @required this.paddingInsets,
  }) : super(key: key);

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
          onPressed: () {},
          child: Text(this.buttonText)),
    );
  }
}
