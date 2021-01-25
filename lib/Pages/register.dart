import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:obscura/Global_Components/LoginReg/LoginButton.dart';
import 'package:obscura/Global_Components/LoginReg/RegisterColumn.dart';
import 'package:obscura/constants.dart';

//TODO: Link to channel select page
//TODO: Add images and pretty things
//TODO: Find way to Hide bottom Container.

class register extends StatelessWidget {
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
                        buttonText: "BACK",
                        buttonColor: secondryColour,
                      ),
                      flex: 3,
                    )
                  ]),
              Expanded(child:
                Container(
                  alignment: Alignment.center,
                  child: RegisterColumn(),
                ),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  color: Color(0x00000000),
                  child: SvgPicture.asset('assets/Corner-Art.svg', width: 100, height: 100,)
                ),
            ]
        ),
    );
  }
}
