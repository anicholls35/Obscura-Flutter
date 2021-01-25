import 'package:flutter/material.dart';
import 'package:obscura/Pages/Camera/camera.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/constants.dart';

class BaseNavBar extends StatefulWidget {
  int index;
  BaseNavBar({
    Key key,
    @required this.index,
  }) : super(key: key);

  _BaseNavBar createState() => _BaseNavBar(index);
}

class _BaseNavBar extends State<BaseNavBar> {
  int _currentIndex;

  _BaseNavBar(this._currentIndex);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColour,
        selectedItemColor: secondryColour,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Camera",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), label: "Leaderboards"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        onTap: (index) {
          setState(() {
            if(index != )
          });
        });
  }
}
