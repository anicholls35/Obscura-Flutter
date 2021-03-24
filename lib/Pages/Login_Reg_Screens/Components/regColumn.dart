import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Channel_Select/channelSelect.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginFormField.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:obscura/constants.dart';
import 'package:provider/provider.dart';

import '../../Channel_Select/channelSelect.dart';

class RegisterColumn extends StatelessWidget {
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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final secondPasswordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    secondPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Width + Height
    final double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: LoginFormField(
            formText: "email".toUpperCase(),
            controller: emailController,
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
            controller: passwordController,
            prefixIcon: Icon(Icons.lock),
            textStyle: formTextStyle,
            edgeInsetsGeometry: formEdgeInsetsGeometry,
            paddingInsets: formPaddingInsets,
            fillColor: primaryColour,
            obscure: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: LoginFormField(
            formText: "re-enter password".toUpperCase(),
            controller: secondPasswordController,
            prefixIcon: Icon(Icons.lock),
            textStyle: formTextStyle,
            edgeInsetsGeometry: formEdgeInsetsGeometry,
            paddingInsets: formPaddingInsets,
            fillColor: primaryColour,
            obscure: true,
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'sign-up'.toUpperCase(),
            buttonColor: accentColour,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
            onPressed: () {
              print('Sign-up Pressed');
              context
                  .read<AuthenticationService>()
                  .signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      secondPassword: secondPasswordController.text)
                  .then((res) {
                if (res != "sign-up") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sign-up Error"),
                        content: Text(res),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    FadeRoute(
                      page: ChannelSelect(),
                    ),
                  );
                }
              });
            },
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'sign-up with Facebook'.toUpperCase(),
            buttonColor: Colors.blue,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
            onPressed: () {
              print('facebook su Pressed');
            },
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'sign-up with google'.toUpperCase(),
            buttonColor: Colors.deepOrange,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
            onPressed: () {
              print('google su Pressed');
            },
          ),
        ),
        Visibility(
          visible:
              Theme.of(context).platform == TargetPlatform.iOS ? true : false,
          child: SizedBox(
            width: width * 0.5,
            child: LoginButton(
              buttonText: 'sign-up with apple'.toUpperCase(),
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
