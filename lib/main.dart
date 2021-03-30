import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:obscura/constants.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Pages/Feed/feed.dart';
import 'Pages/Login_Reg_Screens/login.dart';
import 'constants.dart';
import 'constants.dart';

Future<void> main() async {
  //Below 2 lines locks app in portrait orintation
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(Obscura()));
}

/// main.dart is responsible for starting the app and dealing with Obscura's
/// navigation. Pushing and Popping screens as needed. It's also where you setup
/// website routes

class Obscura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Obscura',
        theme: ThemeData(
          primaryColor: primaryColour,
          accentColor: accentColour,
          scaffoldBackgroundColor: primaryColour,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      print(firebaseUser);
      String userID = firebaseUser.uid;
      print("main.dart: uid --> $userID");
      //user logged in
      return Feed();
    }

    //user not logged in
    return Login();
  }
}
