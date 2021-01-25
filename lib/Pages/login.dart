import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Global_Components/LoginReg/LoginButton.dart';
import 'package:obscura/Global_Components/LoginReg/LoginColumn.dart';
import 'package:obscura/constants.dart';

//TODO: Link to Registration page
//TODO: Link to channel select page
//TODO: Find way to Hide bottom Container.

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColour,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset('assets/Corner-Art.svg', width: 100, height: 100,)
              ),
              Spacer(flex: 1,),
              Expanded(child:
                LoginButton(
                  textStyle: new TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold,),
                  edgeInsetsGeometry: EdgeInsets.all(8),
                  paddingInsets: EdgeInsets.all(15),
                  buttonText: "REGISTER",
                  buttonColor: secondryColour,
                ),
                flex: 3,
              )
          ]),
          Expanded(child:
            Container(
              alignment: Alignment.center,
              child: LoginColumn(),
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset('assets/Corner-Art.svg', width: 100, height: 100,)
          ),
        ]
      ),
    );
  }
}
