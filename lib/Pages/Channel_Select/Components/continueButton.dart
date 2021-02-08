import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/constants.dart';

class ContinueButton extends StatelessWidget {
  //Constructor
  const ContinueButton(
      {Key key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0,),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: secondryColour,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            Navigator.pushReplacement(context, FadeRoute(page: Feed(),),);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Continue', style: TextStyle(color: Colors.black, fontSize: 18),),
          ),),
    );
  }
}
