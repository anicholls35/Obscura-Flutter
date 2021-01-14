import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obscura/constants.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = primaryColour;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  const BaseAppBar({Key key, this.title, this.appBar, this.widgets})
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
