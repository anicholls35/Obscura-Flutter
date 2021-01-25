import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  //Fields
  final String formText;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;
  final Color fillColor;
  final bool obscure;
  final TextStyle textStyle;

  //Constructor
  const LoginFormField({
    Key key,
    @required this.formText,
    @required this.textStyle,
    @required this.edgeInsetsGeometry,
    @required this.paddingInsets,
    @required this.fillColor,
    @required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: this.paddingInsets,
        child: TextField(
          obscureText: this.obscure,
          decoration: InputDecoration(
            contentPadding: this.edgeInsetsGeometry,
            hintText: this.formText,
            hintStyle: this.textStyle,
            filled: true,
            fillColor: this.fillColor,
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: Under
          ),
        ));
  }
}
