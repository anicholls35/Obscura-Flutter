import 'package:flutter/material.dart';
import 'package:obscura/Components/AppBar/baseAppBar.dart';
import 'package:obscura/Components/AppBar/mapWidget.dart';
import 'package:obscura/Components/AppBar/searchWidget.dart';
import 'package:obscura/Components/LoginReg/LoginButton.dart';
import 'package:obscura/Components/LoginReg/RegisterColumn.dart';
import 'package:obscura/constants.dart';

//TODO: Link to channel select page
//TODO: Add images and pretty things

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColour,
        body: Center(
          child: RegisterColumn(),
        )
    );
  }
}
