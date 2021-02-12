import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Pages/Profile/profileOverview.dart';
import 'package:obscura/constants.dart';

import '../../constants.dart';

//This is the base component for an AppBar which you (Dev) will use to pull
//accross a unified appbar experience to each page you make. It's not finished
//as more pages need to be completed for that can be done.
//background colour is already set. You need to pass a title, an appbar widget,
//and also any actions (named widgets). Actions will be the search button
//down the line.

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;
  final Image activeUserPic;
  final double elevation;
  final bool backIcon;

  const BaseAppBar({
    Key key,
    @required this.title,
    @required this.appBar,
    this.widgets,
    @required this.activeUserPic,
    this.backgroundColor,
    this.elevation,
    this.backIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation == null ? 20 : elevation,
      centerTitle: true,
      title: title,
      backgroundColor:
          backgroundColor == null ? primaryColour : backgroundColor,
      leading: backIcon == true
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              })
          : new Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileOverview(),
                    ),
                  );
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondryColour),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: activeUserPic.image,
                    ),
                  ),
                ),
              ),
            ),
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
