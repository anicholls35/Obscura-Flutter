import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginButton.dart';
import 'package:obscura/Pages/Login_Reg_Screens/Components/loginFormField.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:obscura/constants.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../constants.dart';

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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Width + Height
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
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
          padding: EdgeInsets.symmetric(horizontal: 50),
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
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'Login'.toUpperCase(),
            buttonColor: accentColour,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
            onPressed: () {
              print('Login Pressed');
              context
                  .read<AuthenticationService>()
                  .signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  )
                  .then((res) {
                if (res == "logged-in") {
                  context.read<AuthenticationService>().getUser().then((user) {
                    print("Got username: " + user.email);
                    print("UID: " + user.uid);

                    String url;
                    firebaseDatabase
                        .collection("users")
                        .where("uid", isEqualTo: user.uid)
                        .get()
                        .then((value) {
                      value.docs.forEach((doc) {
                        print("\n\n\nJust doc --> $doc\n\n\n");
                        print("\n\n\ndoc.data() --> ${doc.data()}\n\n\n");
                        url = doc.data()["profile_pic"];
                      });
                    });

                    userImg = url;
                  });
                  Navigator.pushReplacement(
                    context,
                    FadeRoute(
                      page: Feed(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sign-in Error"),
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
                }
              });
            },
          ),
        ),
        SizedBox(
          width: width * 0.5,
          child: LoginButton(
            buttonText: 'Login with Facebook'.toUpperCase(),
            buttonColor: Colors.blue,
            textStyle: buttonTextStyle,
            edgeInsetsGeometry: buttonEdgeInsetsGeometry,
            paddingInsets: buttonPaddingInsets,
            onPressed: () {
              print('facebook Pressed');
            },
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
            onPressed: () {
              print('google Pressed');
              context
                  .read<AuthenticationService>()
                  .signInWithGoogle()
                  .then((res) {
                if (res == "logged-in") {
                  Navigator.pushReplacement(
                    context,
                    FadeRoute(
                      page: Feed(),
                    ),
                  );
                } else {
                  print("google failed");
                  print(res);
                }
              });
            },
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
