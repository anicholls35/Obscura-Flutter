import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class LoginFormField extends StatelessWidget {
  //Fields
  final String formText;
  final Icon pixicon;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final EdgeInsetsGeometry paddingInsets;
  final Color fillColor;
  final bool obscure;
  final TextStyle textStyle;

  //Constructor
  const LoginFormField({
    Key key,
    @required this.formText,
    this.prefixicon,
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
          autocorrect: false,
          obscureText: this.obscure,
          decoration: InputDecoration(
            contentPadding: this.edgeInsetsGeometry,
            hintText: this.formText,
            pi
            hintStyle: this.textStyle,
            filled: true,
            fillColor: this.fillColor,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: secondryColour,
              ),
            ),
          ),
        ));
  }
}
