import 'package:flutter/material.dart';
import 'package:obscura/Pages/Camera/camera.dart';
import 'package:obscura/Pages/Feed/feed.dart';
import 'package:obscura/Pages/Settings_Page/settings.dart';
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
            icon: Icon(Icons.camera_alt),
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
          setState(
            () {
              if (index != _currentIndex) {
                switch (index) {
                  case 0:
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Feed(),
                          ));
                    }
                    break;
                  case 1:
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Coming Soon: Notifications"),
                            content: Text(
                                "Notfications will be the apps central hub. " +
                                    "Here you'll see updates, ongoing challenges, etc."),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Okay"),
                              ),
                            ],
                          );
                        });
                    break;
                  case 2:
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Camera(),
                          ));
                    }
                    break;
                  case 3:
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Coming Soon: Challanges/Leaderboards"),
                            content: Text("Obscura gamifies your photo sharing experience " +
                                "by introducing challenges and leaderboards. " +
                                "From short lightning challenges to longer geo/item " +
                                "based challenges. You can also score and be scored " +
                                "to compare you photography skills to others"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Okay"),
                              ),
                            ],
                          );
                        });
                    break;
                  case 4:
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
                    }
                }
              }
            },
          );
        });
  }
}
