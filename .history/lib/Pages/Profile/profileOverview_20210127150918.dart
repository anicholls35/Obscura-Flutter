import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';

class ProfileOverview extends StatelessWidget {
  List<String> getName() {
    int index = users[0].userName.indexOf(' ');
    
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle tabBarStyle = TextStyle(color: Colors.white, fontSize: 20);
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ProfileFull(pImage: users[0].profilePicture),
            Container(
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Positioned(
              bottom: height * 0.13,
              child: Text(
                users[0].userName,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ],
        ),
      ),
    );
  }
}
