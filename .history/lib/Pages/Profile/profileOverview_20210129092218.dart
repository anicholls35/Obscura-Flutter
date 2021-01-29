import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Buttons/popButton.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/imageView.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';
import 'package:obscura/Pages/Profile/Components/tabBar.dart';
import 'package:obscura/Pages/Profile/profileContaints.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

class ProfileOverview extends StatelessWidget {
  List<String> getName() {
    String userName = users[0].userName;
    int index = userName.indexOf(' ');
    List<String> _temp = [
      userName.substring(0, index),
      userName.substring(index + 1)
    ];

    return _temp;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    List<String> userName = getName();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //UserPic
          SwipeGestureRecognizer(
            onSwipeUp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfileContaints(image: users[0].profilePicture),
                ),
              );
            },
            onSwipeRight: () {
              Navigator.pop(context);
            },
            child: GestureDetector(
              onTap: () {
                print('Tap Detected');
                Navigator.push(
                  context,
                  FadeRoute(
                    page: ImageView(image: users[0].profilePicture),
                  ),
                );
              },
              child: ProfileFull(pImage: users[0].profilePicture),
            ),
          ),
          //Back Button
          Positioned(
            top: height * 0.05,
            left: MediaQuery.of(context).size.width * 0.01,
            child: Container(
              child: PopButton(
                size: 30,
              ),
            ),
          ),
          //User Name
          Positioned(
            bottom: height * 0.13,
            left: 15,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userName[0],
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    userName[1],
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
          ),
          //Tab bar
          Positioned(
            bottom: 0,
            child: Hero(
              tag: 'tabBar',
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text(
                            'posts'.toUpperCase(),
                          ),
                          Text('50'),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text(
                            'following'.toUpperCase(),
                          ),
                          Text('200'),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text(
                            'followers'.toUpperCase(),
                          ),
                          Text('150'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
