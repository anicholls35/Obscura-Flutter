import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginFormField.dart';
import 'package:obscura/constants.dart';

class LoginColumn extends StatelessWidget {
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

  //Width + Height
  final double width = MediaQuery(data: data, child: child)

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: LoginFormField(
            formText: "username".toUpperCase(),
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
            textStyle: formTextStyle,
            edgeInsetsGeometry: formEdgeInsetsGeometry,
            paddingInsets: formPaddingInsets,
            fillColor: primaryColour,
            obscure: false,
          ),
        ),
        SizedBox(
          width: 300,
          child: LoginButton(
            buttonText: 'Login'.toUpperCase(),
            buttonColor: accentColour,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
          ),
        ),
      ],
    );
  }
}

class OldCol extends StatelessWidget {
  const OldCol({
    Key key,
    @required this.formTextStyle,
    @required this.formPaddingInsets,
    @required this.formEdgeInsetsGeometry,
    @required this.buttonTextStyle,
    @required this.buttonEdgeInsetsGeometry,
    @required this.buttonPaddingInsets,
  }) : super(key: key);

  final TextStyle formTextStyle;
  final EdgeInsetsGeometry formPaddingInsets;
  final EdgeInsetsGeometry formEdgeInsetsGeometry;
  final TextStyle buttonTextStyle;
  final EdgeInsetsGeometry buttonEdgeInsetsGeometry;
  final EdgeInsetsGeometry buttonPaddingInsets;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: LoginFormField(
                  formText: "USERNAME",
                  textStyle: formTextStyle,
                  paddingInsets: formPaddingInsets,
                  edgeInsetsGeometry: formEdgeInsetsGeometry,
                  fillColor: Colors.white,
                  obscure: false,
                ),
                flex: 4,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: LoginFormField(
                  formText: "PASSWORD",
                  textStyle: formTextStyle,
                  paddingInsets: formPaddingInsets,
                  edgeInsetsGeometry: formEdgeInsetsGeometry,
                  fillColor: Colors.white,
                  obscure: true,
                ),
                flex: 4,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: LoginButton(
                  buttonText: "LOGIN",
                  buttonColor: accentColour,
                  textStyle: this.buttonTextStyle,
                  edgeInsetsGeometry: this.buttonEdgeInsetsGeometry,
                  paddingInsets: buttonPaddingInsets,
                ),
                flex: 2,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: LoginButton(
                  buttonText: "LOGIN WITH FACEBOOK ",
                  buttonColor: Colors.blue,
                  textStyle: this.buttonTextStyle,
                  edgeInsetsGeometry: this.buttonEdgeInsetsGeometry,
                  paddingInsets: buttonPaddingInsets,
                ),
                flex: 2,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            Row(children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: LoginButton(
                  buttonText: "LOGIN WITH GOOGLE",
                  buttonColor: Colors.red,
                  textStyle: this.buttonTextStyle,
                  edgeInsetsGeometry: this.buttonEdgeInsetsGeometry,
                  paddingInsets: buttonPaddingInsets,
                ),
                flex: 2,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            Visibility(
              visible: Theme.of(context).platform == TargetPlatform.iOS
                  ? true
                  : false,
              child: Row(children: [
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  child: LoginButton(
                    buttonText: "LOGIN WITH APPLE",
                    buttonColor: Colors.black,
                    textStyle: this.buttonTextStyle,
                    edgeInsetsGeometry: this.buttonEdgeInsetsGeometry,
                    paddingInsets: buttonPaddingInsets,
                  ),
                  flex: 2,
                ),
                Spacer(
                  flex: 1,
                ),
              ]),
            )
          ]),
    );
  }
}
