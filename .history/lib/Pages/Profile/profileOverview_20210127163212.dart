import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Buttons/popButton.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/imageView.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';
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
    final TextStyle tabBarStyle = TextStyle(color: Colors.white, fontSize: 20);
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
            child: GestureDetector(
              onTap: () {
                print('Tap Detected');
                Navigator.push(context, FadeR)
              },
              child: ProfileFull(pImage: users[0].profilePicture),
            ),
          ),
          //Back Button
          Positioned(
            top: height * 0.05,
            left: MediaQuery.of(context).size.width * 0.01,
            child: Container(
              child: PopButton(),
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
            width: MediaQuery.of(context).size.width,
            bottom: height * 0.05,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Posts",
                          style: tabBarStyle,
                        ),
                        Text(
                          users[0].posts.toString(),
                          style: tabBarStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Following",
                          style: tabBarStyle,
                        ),
                        Text(
                          users[0].following.toString(),
                          style: tabBarStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Followers",
                          style: tabBarStyle,
                        ),
                        Text(
                          users[0].followers.toString(),
                          style: tabBarStyle,
                        ),
                      ],
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
