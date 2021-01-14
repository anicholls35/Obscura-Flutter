import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

//This is the base component for an AppBar which you (Dev) will use to pull
//accross a unified appbar experience to each page you make. It's not finished
//as more pages need to be completed for that can be done.
//background colour is already set. You need to pass a title, an appbar widget,
//and also any actions (named widgets). Actions will be the search button
//down the line.

//TODO: Allow Dev to pass a profile image to fill the emoty circle for active profile

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = primaryColour;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  const BaseAppBar({Key key, @required this.title, @required this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: backgroundColor,
      leading: new Padding(
        padding: EdgeInsets.all(8.0),
        child: Material(
          shape: CircleBorder(),
        ),
      ),
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
