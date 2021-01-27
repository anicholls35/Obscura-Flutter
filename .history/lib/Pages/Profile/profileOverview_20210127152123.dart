import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            //UserPic
            ProfileFull(pImage: users[0].profilePicture),
            Container(
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
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
                            users,
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
                            "0000",
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
                            "0000",
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
      ),
    );
  }
}
